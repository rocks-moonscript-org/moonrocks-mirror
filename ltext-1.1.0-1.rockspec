package = "ltext"
version = '1.1.0-1'
source  = {
  url = "git://github.com/daelvn/ltext",
  tag = "v1.1.0"
}
description = {
  summary = "Text util functions for Lua",
  detailed = [[
    ltext is a compilation of useful functions from lua-users
    and others to manage strings. It includes functions such
    as trim, split, case-change functions, and decorator
    functions. It depends optionally on ansicolors and inspect
    although it is not necessary. This package does not depend
    on them.
  ]],
  homepage = "https://github.com/daelvn/ltext",
  license  = "MIT/X11"
}
build = {
  type = "builtin",
  modules = {
    ltext = "ltext.lua"
  }
}
