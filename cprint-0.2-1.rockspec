package="cprint"
version="0.2-1"
source = {
  url = "git://github.com/siffiejoe/lua-cprint.git",
  tag = "v0.2",
}
description = {
  summary = "An improved print function",
  detailed = [[
    An improved print function that can handle simple
    ANSI color escape sequences.
  ]],
  homepage = "https://github.com/siffiejoe/lua-cprint/",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.5"
}
build = {
  type = "builtin",
  modules = {
    cprint = "cprint.c",
  }
}

