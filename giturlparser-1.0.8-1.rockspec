package = "giturlparser"
version = "1.0.8-1"
source = {
   url = "git+https://linrongbin16:ghs_8YT092A1gtIx1V2HAh1nzvqg6STzGC41sHp3@github.com/linrongbin16/giturlparser.lua.git",
   tag = "v1.0.8"
}
description = {
   summary = "Git URL parsing library for Lua.",
   detailed = "Git URL parsing library for Lua.",
   homepage = "https://github.com/linrongbin16/giturlparser.lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      giturlparser = "src/giturlparser.lua"
   }
}
