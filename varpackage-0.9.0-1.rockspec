rockspec_format = "3.0"
package = "varpackage"
version = "0.9.0-1"
source = {
   url = "git+https://github.com/Deltachaos/varpackage.git",
   tag = "0.9.0"
}
description = {
   summary = "Lua 5.1 require/package that loads source text through a getter",
   detailed = [[
    varpackage provides require, package, and module for environments
    without a filesystem. Module sources are returned by a caller-supplied
    get function. Optional globals are applied only while a chunk runs.
  ]],
   homepage = "https://github.com/Deltachaos/varpackage",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      varpackage = "varpackage.lua"
   },
   copy_directories = {
      "tests"
   }
}
test_dependencies = {
   "busted"
}
test = {
   type = "busted"
}
