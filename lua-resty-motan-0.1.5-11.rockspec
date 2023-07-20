package = "lua-resty-motan"
version = "0.1.5-11"
source = {
   url = "git+https://github.com/weibocom/motan-openresty.git",
   tag = "v0.1.5"
}
description = {
   summary = "motan library for OpenResty",
   detailed = [[
                Motan is a cross-language remote procedure call(RPC) framework
                for rapid development of high performance distributed services.
                This is OpenResty motan implementation for Motan.
              ]],
   homepage = "https://github.com/weibocom/motan-openresty",
   license = "Apache 2.0"
}
dependencies = {
   "lua >= 5.1",
   "lua-resty-http >= 0.12",
   "lua-resty-timer >=0.0.1",
   "lua-resty-consul >= 0.2"
}

build = {
   patches = {
      ["client.call.patch"] = [[
diff --git a/lib/motan/client/init.lua b/lib/motan/client/init.lua
index 3208cb0..fab4704 100644
--- a/lib/motan/client/init.lua
+++ b/lib/motan/client/init.lua
@@ -23,6 +23,15 @@ end

 -- for calling with metadata
 function _M.call(self, fucname, metadata, ...)
+    local resp, err = self:fcall(fucname, metadata, ...)
+
+    if err ~= nil then
+        return nil, err
+    end
+    return resp.value
+end
+
+function _M.fcall(self, fucname, metadata, ...)
     local protocol = singletons.motan_ext:get_protocol(self.url.protocol)
     local req = protocol:make_motan_request(self.url, fucname, ...)
     if not utils.is_empty(metadata) then
@@ -31,10 +40,7 @@ function _M.call(self, fucname, metadata, ...)
         end
     end
     local resp = self.cluster:call(req)
-    if resp:get_exception() ~= nil then
-        return nil, resp:get_exception()
-    end
-    return resp.value
+    return resp, resp:get_exception()
 end

 -- for purge RPC call
diff --git a/lib/motan/core/response.lua b/lib/motan/core/response.lua
index 1ca922b..613d53f 100644
--- a/lib/motan/core/response.lua
+++ b/lib/motan/core/response.lua
@@ -12,7 +12,8 @@ function _M.new(self, opts)
         value = opts.value or nil,
         exception = opts.exception or nil,
         process_time = opts.process_time or nil,
-        attachments = opts.attachments or {}
+        attachments = opts.attachments or {},
+        reused_times = opts.reused_times or nil
         -- RpcContext = opts.RpcContext or nil,
     }
     return setmetatable(response, mt)
@@ -56,4 +57,12 @@ end
 -- function _M.grocessDeserializable(self, toType)
 -- end

+function _M.get_reused_times(self)
+    return self.reused_times
+end
+
+function _M.set_reused_times(self, times)
+    self.reused_times = times
+end
+
 return _M
diff --git a/lib/motan/endpoint/motan.lua b/lib/motan/endpoint/motan.lua
index 5490eca..eee6273 100644
--- a/lib/motan/endpoint/motan.lua
+++ b/lib/motan/endpoint/motan.lua
@@ -69,7 +69,12 @@ function _M.connect(self)
     if not sock then
         return nil, "not initialized"
     end
-    local ok, err = sock:connect(self.url.host, self.url.port)
+    local ok, err
+    if self.url.unixSock ~= "" then
+        ok, err = sock:connect("unix:" .. self.url.unixSock)
+    else
+        ok, err = sock:connect(self.url.host, self.url.port)
+    end
     if err == nil then
         return ok, nil
     end
@@ -78,7 +83,7 @@ function _M.connect(self)
     if
         singletons.config.conf_set["WEIBO_MESH"] ~= nil and
             singletons.config.conf_set["WEIBO_MESH"] == table.concat({self.url.host, self.url.port}, ":")
-     then
+    then
         use_weibo_mesh = true
     end
     -- when connect fail to mesh, we need retry though snapshot nodes.
@@ -117,22 +122,28 @@ function _M.call(self, req)
     local ok, conn_err = self:connect()
     local protocol = singletons.motan_ext:get_protocol(self.url.protocol)
     if ok then
+        local reused_times, _ = sock:getreusedtimes()
         local serialization
         serialization = singletons.motan_ext:get_serialization(self.url.params["serialization"])
         local req_buf = protocol:convert_to_request_msg(req, serialization)
         local bytes, send_err = sock:send(req_buf)
         if not bytes then
             ngx.log(ngx.ERR, "motan endpoint send RPC Call err: ", send_err)
-            return protocol:build_error_resp(send_err, req)
+            local resp_err = protocol:build_error_resp(send_err, req)
+            resp_err:set_reused_times(reused_times)
+            return resp_err
         end
         local resp_ok, resp_err = protocol:read_reply(sock, serialization)
         if not resp_ok then
             ngx.log(ngx.ERR, "motan endpoint receive RPC resp err: ", resp_err)
-            return protocol:build_error_resp(resp_err, req)
+            local resp_err = protocol:build_error_resp(resp_err, req)
+            resp_err:set_reused_times(reused_times)
+            return resp_err
         end
         sock:setkeepalive(self.max_idle_timeout, self.pool_size)
         local process_time = ngx.now() - start_time
         resp_ok:set_process_time(math.floor((process_time * 100) + 0.5) * 0.01)
+        resp_ok:set_reused_times(reused_times)
         return resp_ok
     else
         ngx.log(ngx.ERR, "motan endpoint failed connect to peer: ", conn_err)
diff --git a/lib/motan/registry/direct.lua b/lib/motan/registry/direct.lua
index 739b944..9cfbe8e 100644
--- a/lib/motan/registry/direct.lua
+++ b/lib/motan/registry/direct.lua
@@ -15,7 +15,8 @@ local mt = {__index = _M}
 function _M:new(opts)
     local direct = {
         host = opts.host,
-        port = opts.port
+        port = opts.port,
+        unixSock = opts.unixSock
     }
     return setmetatable(direct, mt)
 end
@@ -44,6 +45,7 @@ function _M:discover(url)
         protocol = url.protocol,
         host = self.host,
         port = self.port,
+        unixSock = self.unixSock,
         path = url.path,
         group = url.group,
         params = url.params
diff --git a/lib/motan/url.lua b/lib/motan/url.lua
index 7fd46a8..2ef918f 100644
--- a/lib/motan/url.lua
+++ b/lib/motan/url.lua
@@ -23,6 +23,7 @@ function _M.new(self, opts)
             host = opts.host or singletons.var.LOCAL_IP,
             port = opts.port or 0,
             path = opts.path or "",
+            unixSock = opts.unixSock or "",
             group = opts.group or "",
             params = opts.params or {}
         }
@@ -30,6 +31,7 @@ function _M.new(self, opts)
             "protocol",
             "host",
             "port",
+            "unixSock",
             "path",
             "group",
             "params"
@@ -46,12 +48,22 @@ function _M.new(self, opts)
 end

 function _M.get_addr(self)
+    local addr = {
+        self.host,
+        consts.COLON_SEPARATOR,
+        self.port
+    }
+
+    if self.unixSock ~= "" then
+        addr = {
+            self.unixSock
+        }
+    end
+
     local addr_info = {
         self.protocol,
         consts.PROTOCOL_SEPARATOR,
-        self.host,
-        consts.COLON_SEPARATOR,
-        self.port,
+        tab_concat(addr),
         consts.PATH_SEPARATOR
     }
     return tab_concat(addr_info)
@@ -63,10 +75,11 @@ function _M.copy(self)
     for k, v in pairs(self.params) do
         params[k] = v
     end
-    url.protocol, url.host, url.port, url.path, url.group, url.params =
+    url.protocol, url.host, url.port, url.unixSock, url.path, url.group, url.params =
         self.protocol,
         self.host,
         self.port,
+        self.unixSock,
         self.path,
         self.group,
         params
@@ -79,12 +92,22 @@ function _M.get_identity(self)
 end

 function _M.get_urlinfo(self, with_params_str)
+    local addr = {
+        self.host,
+        consts.COLON_SEPARATOR,
+        self.port
+    }
+
+    if self.unixSock ~= "" then
+        addr = {
+            self.unixSock
+        }
+    end
+
     local url_info = {
         self.protocol,
         consts.PROTOCOL_SEPARATOR,
-        self.host,
-        consts.COLON_SEPARATOR,
-        self.port,
+        tab_concat(addr),
         consts.PATH_SEPARATOR,
         self.path,
         consts.QMARK_SEPARATOR,
      ]]
   },

   type = "command",

   -- TODO(yunlong18): get install path from config
   build_command = "cd lib/motan/libs && gcc -g -o libmotan_tools.so -fpic -shared motan_tools.c",
   install_command = "cp -R lib/motan /usr/local/share/lua/5.1"..
                     " && mkdir -p /usr/local/lib/lua/5.1/"..
                     " && ln -sf /usr/local/share/lua/5.1/motan/libs/cmotan.so /usr/local/lib/lua/5.1/cmotan.so"..
                     " && ln -sf /usr/local/share/lua/5.1/motan/libs/libmotan_tools.so /lib/libmotan_tools.so"..
                     " && ldconfig"
}


