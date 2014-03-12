package = "Terminfo"
version = "1.1-1"
source = {
   url = "http://www.pjb.com.au/comp/lua/terminfo-1.1.tar.gz",
   md5 = "09600c8cb676bf9b74b6df103a9b86d9"
}
description = {
   summary = "access the terminfo database",
   detailed = [[
      This module is a re-expression in Lua by Peter Billam of the Perl
      Term::Terminfo module, plus extra functions get() and tparm().
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/terminfo.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1", "luaposix >= 30"
}
build = {
   type = "builtin",
   modules = {
      ['C-terminfo'] = {
         libraries = {
            "termcap"
         },
         sources = {
            "C-terminfo.c"
         }
      },
      Terminfo = "terminfo.lua"
   },
   copy_directories = {
      "doc", "test"
   }
}
