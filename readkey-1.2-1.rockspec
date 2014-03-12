package = "ReadKey"
version = "1.2-1"
source = {
   url = "http://www.pjb.com.au/comp/lua/readkey-1.2.tar.gz",
   md5 = "016fc07770b2ea96841b39209c3af1a5"
}
description = {
   summary = "simple terminal control, like CPAN's Term::ReadKey",
   detailed = [[
      This module is modelled on the CPAN Term::ReadKey
        http://search.cpan.org/perldoc?Term::ReadKey
      It provides simple control over terminal driver modes
      (cbreak, raw, cooked, etc.), support for non-blocking reads,
      and some generalized handy functions for working with terminals.
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/readkey.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1", "luaposix >= 31", "readline >= 1.1", "terminfo >= 1.1"
}
build = {
   type = "builtin",
   modules = {
      ReadKey = "readkey.lua"
   },
   copy_directories = {
      "doc", "test"
   }
}
