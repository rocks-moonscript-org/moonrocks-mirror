package = "lbuilder"
version = "1.1-1"

source = {
  url = "git://github.com/daelvn/lbuilder",
  tag = "v1.1"
}

description = {
  summary  = "Pattern builder library for Lua",
  detailed = [[
    lbuilder lets you use functions to easily build patterns
    in an Lpeg-manner.
  ]],
  homepage = "http://lbuilder.daelvn.ga/",
  license  = "MIT"
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
