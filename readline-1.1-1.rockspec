package = "Readline"
version = "1.1-1"
source = {
   url = "http://www.pjb.com.au/comp/lua/readline-1.1.tar.gz",
   md5 = "b40c579120766651782c312d9d925408"
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
