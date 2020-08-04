package = "nokia-fork-lua-resty-mysql"
version = "0.20-1"
source = {
  url = "git://github.com/nokia/lua-resty-mysql",
  tag = "v0.20-nokia-1"
}
description = {
  summary = "Nonblocking Lua MySQL driver library for OpenResty / ngx_lua.",
  detailed = [[
     This is a Nokia fork for the following library:
     https://luarocks.org/modules/nbz4live/lua-resty-mysql
  ]],
  homepage = "https://github.com/nokia/lua-resty-mysql",
  license = "BSD"
}
dependencies = {
  "lua >= 5.1",
  "luabitop",
  "nokia-fork-lua-resty-socket == 1.0.0-1"
}
build = {
  type = "builtin",
  modules = {
    ["resty.mysql"] = "lib/resty/mysql.lua"
  }
}