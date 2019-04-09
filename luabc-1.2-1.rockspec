package="luabc"
local _version = "1.2"
version = _version .. "-1"
source = {
  url="git://github.com/slact/luabc",
  tag="v".._version
}
version=_version.."-1"
description = {
   summary = "A simple arbitrary precision library",
   detailed = [[
      A simple arbitrary precision library for Lua,
      based on code from GNU bc. Repackaged to work with Lua 5.1-5.3.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lbc",
   license = "GNU General Public License version 2 or later"
}
dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      bc = {
         sources = {
            "lbc.c", "number.c"
         },
         incdirs = {
            "."
         },
      }
   }
}
