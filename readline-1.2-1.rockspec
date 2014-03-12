package = "Readline"
version = "1.2-1"
source = {
   url = "http://www.pjb.com.au/comp/lua/readline-1.2.tar.gz",
   md5 = "be58306d111b910bafdaaca8985245d8"
}
description = {
   summary = "Interface to the readline library",
   detailed = [[
      This Lua module offers a simple calling interface
      to the GNU Readline/History Library.
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/readline.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1", "luaposix >= 30"
}
build = {
   type = "builtin",
   modules = {
      ['C-readline'] = {
         libraries = {
            "readline"
         },
         sources = {
            "C-readline.c"
         }
      },
      Readline = "readline.lua"
   },
   copy_directories = {
      "doc", "test"
   }
}
