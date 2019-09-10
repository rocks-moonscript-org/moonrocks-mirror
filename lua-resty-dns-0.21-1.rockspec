package = "lua-resty-dns"
version = "0.21-1"
source = {
   url = "git://github.com/openresty/lua-resty-dns",
   tag = "v0.21",
}
description = {
   summary = "lua-resty-dns - Lua DNS resolver for the ngx_lua based on the cosocket API",
   detailed = [[

This Lua library provies a DNS resolver for the ngx_lua nginx module:

https://github.com/openresty/lua-nginx-module/#readme

This Lua library takes advantage of ngx_lua's cosocket API, which ensures 100% nonblocking behavior.

Note that at least ngx_lua 0.5.12 or OpenResty 1.2.1.11 is required.

Also, the bit library is also required. If you're using LuaJIT 2.0 with ngx_lua, then the bit library is already available by default.

Note that, this library is bundled and enabled by default in the OpenResty bundle.

IMPORTANT: to be able generate unique ids, the random generator must be properly seeded using math.randomseed prior to using this module.


   ]],
   homepage = "https://openresty.org/",
   license = "BSD"
}

build = {
   type = "builtin",

  modules = {
    ["resty.dns.resolver"] = "lib/resty/dns/resolver.lua",
  },
}
