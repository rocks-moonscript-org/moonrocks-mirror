package = "lua-multipart-parser"
version = "0.1.1-0"
source = {
  url = "git://github.com/ktalebian/lua-multipart-parser",
  tag = "0.1.1-0"
}
description = {
  summary = "A simple HTTP multipart encoder/decoder for Lua",
  detailed = [[
    A simple HTTP multipart encoder/decoder for Lua, that can be used to work with multipart/form-data payloads.
  ]],
  homepage = "https://github.com/ktalebian/lua-multipart-parser",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "stringy ~> 0.4-1"
}
build = {
  type = "builtin",
  modules = {
    multipart = "src/multipart.lua"
  }
}
