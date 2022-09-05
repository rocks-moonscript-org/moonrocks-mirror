package = "lua-monocypher"
version = "3.1.3-1"
source = {
   url = "git+https://codeberg.org/bloataware/lua-monocypher.git"
}
description = {
   summary = "Lua wrapper for Monocypher",
   homepage = "https://codeberg.org/bloataware/lua-monocypher",
   license = "Zero-Clause BSD",
   maintainer = "luiz <bloataware@tutanota.com>"
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
