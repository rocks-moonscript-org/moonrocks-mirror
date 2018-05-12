package = "lobject"
version = "1.0-1"

source  = {
  url = "git://github.com/daelvn/lobject",
  tag = "v1.0"
}

description = {
  summary  = "Simple OOP library for Lua",
  detailed = [[
    lobject is an OOP library that supports multiple inheritance, mixins, and type checking. You are able to implement metamethods directly as well as modifying the class system yourself.
  ]],
  homepage = "http://me.daelvn.ga/lobject",
  license  = "MIT/X11"
}

dependencies = {
  "lua >= 5.1 < 5.4"
}

build = {
  type    = "builtin",
  modules = {
    lobject = "lobject.lua" 
  }
}
