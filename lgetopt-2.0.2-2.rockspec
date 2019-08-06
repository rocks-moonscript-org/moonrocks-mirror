package = "lgetopt"
version = "2.0.2-2"
source = {
   url = "git://github.com/daelvn/lgetopt",
   tag = "v2.0.2"
}
description = {
   summary = "Command-line argument parser",
   detailed = [[
    lgetopt provides a function which allows you to easily parse arguments in
    the command line. Now written in MoonScript
  ]],
   homepage = "http://lgetopt.daelvn.ga/",
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      lgetopt = "lgetopt.lua"
   }
}
