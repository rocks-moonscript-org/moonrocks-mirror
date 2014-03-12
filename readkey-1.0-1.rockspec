package = "ReadKey"
version = "1.0-1"
source = {
   url = "http://www.pjb.com.au/comp/lua/readkey-1.0.tar.gz",
   md5 = "62a2e0a9df7a2a2670f26d453b403387"
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
external_dependencies = {}
build = {
   type = "builtin",
   modules = {
      ReadKey = "readkey.lua"
   },
   copy_directories = {
      "doc", "test"
   }
}
