package = "pgvector"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/pgvector/pgvector-lua.git",
   tag = "v0.1.0"
}
description = {
   summary = "pgvector support for Lua",
   detailed = "pgvector support for Lua",
   homepage = "https://github.com/pgvector/pgvector-lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      pgvector = "src/pgvector.lua"
   }
}
