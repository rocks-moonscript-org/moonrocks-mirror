package = "Readline"
version = "1.0-1"
source = {
   url = "http://www.pjb.com.au/comp/lua/readline-1.0.tar.gz",
   md5 = "5fb86bd008c3ddd7499fc31ef4fbd951"
}
description = {
   summary = "Interface to the readline library",
   detailed = [[
      This module is a Lua interface to various "readline" packages.  If no
      real package is found, it implements the basic functions with stubs.
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
