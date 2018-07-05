package = "lgetopt"
version = "1.2.8-2"

source = {
  url = "git://github.com/daelvn/lgetopt",
  tag = "v1.2.8"
}

description = {
  summary  = "Command-line argument parser for Lua 5.3",
  detailed = [[
    lgetopt provides a function which allows you to easily parse arguments in
    the command line.
  ]],
  homepage = "http://lgetopt.daelvn.ga/",
  license  = "MIT"
}

dependencies = {
  "lua >= 5.3"
}

build = {
  type    = "builtin",
  modules = {
    lgetopt = "lgetopt.lua"
  }
}
