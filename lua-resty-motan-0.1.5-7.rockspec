package = "lua-resty-motan"
version = "0.1.5-7"
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
@@ -34,7 +43,7 @@ function _M.call(self, fucname, metadata, ...)
     if resp:get_exception() ~= nil then
         return nil, resp:get_exception()
     end
-    return resp.value
+    return resp
 end

 -- for purge RPC call
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


