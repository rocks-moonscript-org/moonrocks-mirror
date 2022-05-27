package = "casbin-adapter"
version = "1.0.0-1"
source = {
   url = "git://github.com/casbin-lua/luasql-adapter"
}
description = {
   summary = "LuaSQL based adapter for Casbin",
   detailed = [[
      LuaSQL based adapter for Casbin which supports policies from SQL based databases.
   ]],
   detailed = "LuaSQL based adapter for Casbin which supports policies from SQL based databases.",
   homepage = "https://github.com/casbin-lua/luasql-adapter",
   license = "Apache License 2.0",
   maintainer = "admin@casbin.org"
}
dependencies = {
   "casbin >= 1.29.0"
}
build = {
   type = "builtin",
   modules = {
      ["Adapter"] = "Adapter.lua",
      ["casbin.mysql"] = "migrations/mysql.lua",
      ["casbin.postgres"] = "migrations/postgres.lua",
      ["casbin.sqlite3"] = "migrations/sqlite3.lua"
   }
}