package = 'FormatterFiveOne'
version = '0.1.2-1'
description = {
  summary = 'Fork of Formatter for Lua 5.1.',
  detailed = [[
    This library beautify Lua code:
    * Indent block
    * Indent expressions
    * Trim trailing white spaces
    It is plain Lua 5.1.
    This is a fork of Formatter which supports inline formatting.

    Forked from: https://github.com/LuaDevelopmentTools/luaformatter
  ]],
  license = 'EPL'
}
source = {
  url = 'git://github.com/ElPiloto/luaformatterfiveone.git',
  tag = 'v0.1.2-1'
}
dependencies = {
  'lua ~> 5.1',
  'metalua-compiler ~> 0.7',
  'penlight ~> 0.9'
}
build = {
  type = 'builtin',
  install = {
    bin = {
      luaformatterfiveone = 'commandline.lua'
    },
  },
  modules = {
    formatter = 'formatter.lua'
  }
}
