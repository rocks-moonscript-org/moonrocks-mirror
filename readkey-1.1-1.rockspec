package = "ReadKey"
version = "1.1-1"
source = {
   url = "http://www.pjb.com.au/comp/lua/readkey-1.1.tar.gz",
   md5 = "1a0b05bba2c9821cfbf439ea93b735fa"
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
