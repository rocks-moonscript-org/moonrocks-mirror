package = "lutf8"
version = "0.1-1"

source = {
  tag = "0.1",
  url = "git://github.com/sumefsp/luautf8"
}

description = {
  summary = "A UTF-8 support module for Lua",
  detailed = [[
   This module adds UTF-8 support to Lua.It use data extracted from Unicode Character Database,and tested on Lua-5.2.3 and LuaJIT.It mainly used to compatible with Lua's own string module, it passed all string and pattern matching test in lua test suite.
  ]],
  homepage='http://github.com/starwing/luautf8',
  maintainer='garnaiksumeet@gmail.com',
  license = "MIT/X11",
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    parseucd = "parseucd.lua",
    lutf8 = "lutf8lib.c"
  }
}

