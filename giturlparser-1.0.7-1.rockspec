package = "giturlparser"
version = "1.0.7-1"
source = {
   url = "git+https://linrongbin16:ghs_lKm3bIimQvWiPSStmNbnZUjMY6QUvv1vu4s5@github.com/linrongbin16/giturlparser.lua.git",
   tag = "v1.0.7"
}
description = {
   summary = "Pure Lua implemented git URL parsing library",
   detailed = "Pure Lua implemented git URL parsing library",
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
