package = "darwin"
version = "1.1-1"
source = {
   url = "git://github.com/mistrza/darwin",
   tag = "v1.1",
}
description = {
   summary = "A module for evolutionary algorithms in Lua",
   homepage = "http://github.com/mistrza/darwin",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "log >= 1.0"
}
build = {
   type = "builtin",
   modules = {
      darwin = "darwin.lua",
   }
}