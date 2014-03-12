package = "lunit"
version = "0.4-1"
source = {
   url = "http://www.nessie.de/mroth/lunit/lunit-0.4.tar.gz",
   md5 = "808a743c5594f6491588b42c56262cf9"
}
description = {
   summary = "A unit testing framework for Lua",
   detailed = [[
      Lunit is a unit testing framework for lua, written in lua.  It provides 
      26 assert functions, and a few miscellaneous functions for usage in an 
      easy unit testing framework. Lunit comes with a test suite to test 
      itself consisting of approximately 710 assertions.
   ]],
   homepage = "http://www.nessie.de/mroth/lunit/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "module",
   modules = {
      ["lunit-console"] = "lunit-console.lua",
      ["lunit"] = "lunit.lua",
   },
   install = {
      bin = {
         ["lunit"] = "lunit"
      }
   }
}
