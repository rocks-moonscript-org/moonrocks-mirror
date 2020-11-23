package = "xpgsql"
version = "0.5-1"
source = {
   url = "git+ssh://git@git.sr.ht/~mna/xpgsql"
}
description = {
   homepage = "Lua module providing a straightforward API to the luapgsql library.",
   license = "BSD"
}
dependencies = {
   "lua >= 5.3, < 5.5",
   "luapgsql >= 1.6.1-1"
}
build = {
   type = "builtin",
   modules = {
      xpgsql = "xpgsql.lua"
   }
}
