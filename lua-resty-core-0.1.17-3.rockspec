package = "lua-resty-core"
version = "0.1.17-3"
source = {
   url = "git://github.com/openresty/lua-resty-core",
   tag = "v0.1.17",
}
description = {
   summary = "lua-resty-core -  New FFI-based Lua API for ngx_http_lua_module and/or ngx_stream_lua_module.",
   detailed = [[

This pure Lua library reimplements part of the ngx_lua module's Nginx API for Lua with LuaJIT FFI and installs the new FFI-based Lua API into the ngx.* and ndk.* namespaces used by the ngx_lua module.

In addition, this Lua library implements any significant new Lua APIs of the ngx_lua module as proper Lua modules, like ngx.semaphore and ngx.balancer.

The FFI-based Lua API can work with LuaJIT's JIT compiler. ngx_lua's default API is based on the standard Lua C API, which will never be JIT compiled and the user Lua code is always interpreted (slowly).

Support for the new ngx_stream_lua_module has also begun.

This library is shipped with the OpenResty bundle by default. So you do not really need to worry about the dependencies and requirements.

   ]],
   homepage = "https://openresty.org/",
   license = "BSD"
}
dependencies = {
   "lua-resty-lrucache",
}

build = {
   type = "builtin",

  modules = {
["ngx.balancer.lua"] = "lib/ngx/balancer.lua",
["ngx.base64.lua"] = "lib/ngx/base64.lua",
["ngx.errlog.lua"] = "lib/ngx/errlog.lua",
["ngx.ocsp.lua"] = "lib/ngx/ocsp.lua",
["ngx.pipe.lua"] = "lib/ngx/pipe.lua",
["ngx.process.lua"] = "lib/ngx/process.lua",
["ngx.re.lua"] = "lib/ngx/re.lua",
["ngx.resp.lua"] = "lib/ngx/resp.lua",
["ngx.semaphore.lua"] = "lib/ngx/semaphore.lua",
["ngx.ssl.lua"] = "lib/ngx/ssl.lua",
["ngx.ssl.session.lua"] = "lib/ngx/ssl/session.lua",
["resty.core.lua"] = "lib/resty/core.lua",
["resty.core.base.lua"] = "lib/resty/core/base.lua",
["resty.core.base64.lua"] = "lib/resty/core/base64.lua",
["resty.core.ctx.lua"] = "lib/resty/core/ctx.lua",
["resty.core.exit.lua"] = "lib/resty/core/exit.lua",
["resty.core.hash.lua"] = "lib/resty/core/hash.lua",
["resty.core.misc.lua"] = "lib/resty/core/misc.lua",
["resty.core.ndk.lua"] = "lib/resty/core/ndk.lua",
["resty.core.phase.lua"] = "lib/resty/core/phase.lua",
["resty.core.regex.lua"] = "lib/resty/core/regex.lua",
["resty.core.request.lua"] = "lib/resty/core/request.lua",
["resty.core.response.lua"] = "lib/resty/core/response.lua",
["resty.core.shdict.lua"] = "lib/resty/core/shdict.lua",
["resty.core.time.lua"] = "lib/resty/core/time.lua",
["resty.core.uri.lua"] = "lib/resty/core/uri.lua",
["resty.core.utils.lua"] = "lib/resty/core/utils.lua",
["resty.core.var.lua"] = "lib/resty/core/var.lua",
["resty.core.worker.lua"] = "lib/resty/core/worker.lua",
  },
}

