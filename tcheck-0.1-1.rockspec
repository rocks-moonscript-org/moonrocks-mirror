package = "tcheck"
version = "0.1-1"
source = {
   url = "git+ssh://git@git.sr.ht/~mna/tcheck"
}
description = {
   summary = "A pure Lua module with no external dependency that provides simple sanity-checks of types for values.",
   homepage = "https://git.sr.ht/~mna/tcheck",
   license = "BSD"
}
dependencies = {
   "lua >= 5.3, < 5.5",
}
build = {
   type = "builtin",
   modules = {
      tcheck = "tcheck.lua",
   }
}
