package = "lbuilder"
version = "1.3-2"

source = {
  url = "git://github.com/daelvn/lbuilder",
  tag = "v1.3"
}

description = {
  summary  = "Pattern builder library for Lua",
  detailed = [[
    lbuilder lets you use functions to easily build patterns
    in an Lpeg-manner.
  ]],
  homepage = "http://lbuilder.daelvn.ga/",
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type    = "builtin",
  modules = {
    lbuilder = "lbuilder.lua"
  }
}
