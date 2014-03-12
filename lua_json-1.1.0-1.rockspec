package = "lua_json"
version = "1.1.0-1"
source = {
   url = "git://github.com/mbalmer/luajson",
   tag = "json-1.1.0",
}
description = {
   summary = "A Lua module for JSON",
   detailed = "A Lua module for JSON",
   homepage = "http://github.com/mbalmer/luajson",
   license = "3-clause BSD"
}
dependencies = {
   "lua >= 5.1, < 5.3"
}
build = {
   type = "builtin",
   modules = {
      json = {
         sources = "luajson.c"
      }
   }
}
