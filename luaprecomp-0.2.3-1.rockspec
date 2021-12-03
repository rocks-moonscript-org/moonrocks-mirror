package = "luaprecomp"
version = "0.2.3-1"
source = {
   url = "git+https://github.com/mna/luaprecomp",
   tag = "v0.2.3"
}
description = {
   summary = "Require pre-compiled Lua modules via standard require function.",
   homepage = "https://github.com/mna/luaprecomp",
   license = "BSD"
}
dependencies = {
   "lua >= 5.3, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      precomp = "precomp.lua"
   }
}
