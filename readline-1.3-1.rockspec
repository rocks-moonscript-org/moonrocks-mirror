package = "Readline"
version = "1.3-1"
source = {
   url = "http://www.pjb.com.au/comp/lua/readline-1.3.tar.gz",
   md5 = "168465933976b4f01c3bb44ca9d8bab0"
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
   "lua >=5.1, <5.3", "luaposix >= 30"
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
