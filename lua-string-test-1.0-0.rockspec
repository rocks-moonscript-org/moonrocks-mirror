package = "lua-string-test"
version = "1.0-0"
source = {
  url = "git://github.com/ldeveloperl1985/lua-string-test"
}
description = {
  summary = "lua string",
  detailed = [[
    Forked from luastring.lua
  ]],
  homepage = "https://github.com/ldeveloperl1985/lua-string-test",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "module",
  modules = {
    luastring = "luastring.lua"
  }
}
