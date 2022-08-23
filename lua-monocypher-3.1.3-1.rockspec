package = "lua-monocypher"
version = "3.1.3-1"
source = {
   url = "git+https://codeberg.org/plain64/lua-monocypher.git"
}
description = {
   summary = "Monocypher made easier with bindings for Lua.",
   homepage = "https://codeberg.org/plain64/lua-monocypher",
   license = "2-Clause BSD",
   maintainer = "luiz <plain64@tuta.io>"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      monocypher = {
         sources = {"monocypher.c", "lua_monocypher.c"},
      }
   }
}
