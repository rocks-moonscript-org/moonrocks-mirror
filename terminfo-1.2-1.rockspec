package = "Terminfo"
version = "1.2-1"
source = {
   url = "http://www.pjb.com.au/comp/lua/terminfo-1.2.tar.gz",
   md5 = "18f77aaabd5b14522bc8efcfec98fe78"
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
      terminfo = "terminfo.lua"
   },
   copy_directories = {
      "doc", "test"
   }
}
