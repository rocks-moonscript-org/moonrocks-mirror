package = "swapi"
version = "1.0-1"
source = {
   url = "https://github.com/sphuff/swapi-lua.git",
   tag = "v1.0",
}
description = {
   summary = "A simple lua wrapper for the Star Wars API",
   homepage = "http://me.github.com/luafruits"
}
dependencies = {
   "lua >= 5.1, < 5.3"
}

build = {
   type = "builtin",
   modules = {
      swapi = "swapi.lua"
   }
}
