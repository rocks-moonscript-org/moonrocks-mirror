package = "lua-resty-memcached"
version = "0.13-0"
source = {
  url = "git://github.com/openresty/lua-resty-memcached",
  tag = "v0.13"
}
description = {
  summary = "Lua memcached client driver for the OpenResty / ngx_lua based on the cosocket API.",
  detailed = [[
    This Lua library is a MySQL client driver for the ngx_lua nginx module:
    http://wiki.nginx.org/HttpLuaModule
    This Lua library takes advantage of ngx_lua's cosocket API, which ensures 100% nonblocking behavior.
    Note that at least ngx_lua 0.5.0rc29 or ngx_openresty 1.0.15.7 is required.
  ]],
  homepage = "https://github.com/openresty/lua-resty-memcached",
  license = "BSD",
  maintainer = "Yichun Zhang <agentzh@gmail.com>"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["resty.memcached"] = "lib/resty/memcached.lua"
  }
}
