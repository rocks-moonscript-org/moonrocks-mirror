package = "lerror"
version = "1.0-3"

source = {
  url = "git://github.com/daelvn/lerror",
  tag = "v1.0"
}

description = {
  summary  = "Error and exception library",
  detailed = [[
    lerror is a simple utility library that lets you manage custom
    errors and exceptions from other libraries. You can use the
    lerror.exceptions library that provides a LuaError and a
    LuaException to be able to use lerror in every case.
  ]],
  homepage = "https://lerror.daelvn.ga/",
}

dependencies = {
  "lua >= 5.1",
  "lobject >= 1.1"
}

build = {
  type    = "builtin",
  modules = {
    ["lerror"]            = "lerror/init.lua",
    ["lerror.exceptions"] = "lerror/exceptions.lua"
  }
}
