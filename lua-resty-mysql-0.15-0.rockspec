package = "lua-resty-mysql"
version = "0.15-0"
source = {
  url = "git://github.com/openresty/lua-resty-mysql",
  tag = "v0.15"
}
description = {
  summary = "Nonblocking Lua MySQL driver library for OpenResty / ngx_lua.",
  detailed = [[
    This Lua library is a MySQL client driver for the ngx_lua nginx module:
    http://wiki.nginx.org/HttpLuaModule
    This Lua library takes advantage of ngx_lua's cosocket API, which ensures 100% nonblocking behavior.
    Note that at least ngx_lua 0.9.11 or ngx_openresty 1.7.4.1 is required.
    Also, the bit library is also required. If you're using LuaJIT 2.0 with ngx_lua, then the bit library is already available by default.
  ]],
  homepage = "https://github.com/openresty/lua-resty-mysql",
  license = "BSD",
  maintainer = "Yichun Zhang <agentzh@gmail.com>"
}
dependencies = {
  "lua >= 5.1",
  "luabitop"
}
build = {
  type = "builtin",
  modules = {
    ["resty.mysql"] = "lib/resty/mysql.lua"
  }
}
