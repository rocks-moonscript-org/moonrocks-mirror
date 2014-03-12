package = "lunit"
version = "0.5-2"
source = {
   url = "http://www.mroth.net/lunit/lunit-0.5.tar.gz",
   md5 = "83e7b6524165ca56f31aff84630ea58d"
}
description = {
   summary = "A unit testing framework for Lua",
   detailed = [[
Lunit is a unit testing framework for lua, written in lua. It provides 27 assert functions, and a few misc functions for usage in an easy unit testing framework.
Lunit comes with a test suite to test itself. The testsuite consists of approximately 710 assertions.]],
   homepage = "http://www.mroth.net/lunit/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.2"
}
build = {
   type = "builtin",
   modules = {
      lunit = "lunit.lua",
      ['lunit-console'] = "lunit-console.lua"
   },
   install = {
      bin = {
         lunit = "lunit"
      }
   }
}
