package = "Terminfo"
version = "1.0-1"
source = {
   url = "http://www.pjb.com.au/comp/lua/terminfo-1.0.tar.gz",
   md5 = "a5c2fe79508682b0f9323c2dd96f8f1e"
}
description = {
   summary = "access the terminfo database, like CPAN's Term::Terminfo",
   detailed = [[
      This module is a re-expression in Lua by Peter Billam of the
      Term::Terminfo Perl module by Paul Evans
      see: http://search.cpan.org/perldoc?Term::Terminfo
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
