package = "lobject"
version = "1.1-1"

source  = {
  url = "git://github.com/daelvn/lobject",
  tag = "v1.1"
}

description = {
  summary  = "Simple OOP library for Lua",
  detailed = [[
    lobject is an OOP library that supports multiple inheritance, mixins, and type checking. You are able to implement metamethods directly as well as modifying the class system yourself.
  ]],
  homepage = "http://lobject.daelvn.ga/",
  license  = "MIT/X11"
}

dependencies = {
  "lua >= 5.2 < 5.4"
}

build = {
  type    = "builtin",
  modules = {
    lobject = "lobject.lua" 
  }
}
