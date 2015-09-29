package = "c3"
version = "1.0-1"

source = {
  url = "git://github.com/saucisson/lua-c3",
  tag = "1.0",
}

description = {
  summary     = "C3 linearization algoritm",
  detailed    = [[
    This module is an implementation in Lua of the C3 linearization algorithm.
  ]],
  license     = "MIT/X11",
  maintainer  = "Alban Linard <alban@linard.fr>",
}

dependencies = {
}

build = {
  type    = "builtin",
  modules = {
    ["c3"] = "src/c3.lua",
  },
}
