package = "lua-resty-core"
version = "0.1.17-1"
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
   "luajit",
   "lua-lrucache",
}

build = {
   type = "builtin",

  modules = {
["ngx.balancer"] = "lib/ngx/balancer.lua",
["ngx.ocsp"] = "lib/ngx/ocsp.lua",
["ngx.re"] = "lib/ngx/re.lua",
["ngx.semaphore"] = "lib/ngx/semaphore.lua",
["ngx.ssl"] = "lib/ngx/ssl.lua",
["ngx.ssl.session"] = "lib/ngx/ssl/session.lua",
["resty.core"] = "lib/resty/core.lua",
["resty.core.base"] = "lib/resty/core/base.lua",
["resty.core.base64"] = "lib/resty/core/base64.lua",
["resty.core.ctx"] = "lib/resty/core/ctx.lua",
["resty.core.exit"] = "lib/resty/core/exit.lua",
["resty.core.hash"] = "lib/resty/core/hash.lua",
["resty.core.misc"] = "lib/resty/core/misc.lua",
["resty.core.regex"] = "lib/resty/core/regex.lua",
["resty.core.request"] = "lib/resty/core/request.lua",
["resty.core.response"] = "lib/resty/core/response.lua",
["resty.core.shdict"] = "lib/resty/core/shdict.lua",
["resty.core.time"] = "lib/resty/core/time.lua",
["resty.core.uri"] = "lib/resty/core/uri.lua",
["resty.core.var"] = "lib/resty/core/var.lua",
["resty.core.worker"] = "lib/resty/core/worker.lua",
  },
}

