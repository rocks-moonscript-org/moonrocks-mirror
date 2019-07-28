package = "lume"
version = "2.3.0-0"
source = {
   url = "git://github.com/rxi/lume",
   tag = "v2.3.0"
}
description = {
   summary = "A collection of functions for Lua, geared towards game development.",
   detailed = "A collection of functions for Lua, geared towards game development.",
   homepage = "https://github.com/rxi/lume",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      lume = "lume.lua"
   }
}
