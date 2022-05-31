package = "resty-casbin-adapter"
version = "1.0.0-1"
source = {
   url = "git://github.com/tom2nonames/lua-resty-casbin-adapter"
}
description = {
   summary = "LuaSQL based adapter for Casbin",
   detailed = [[
      LuaSQL based adapter for Casbin which supports policies from SQL based databases.
   ]],
   detailed = "LuaSQL based adapter for Casbin which supports policies from SQL based databases.",
   homepage = "https://github.com/tom2nonames/lua-resty-casbin-adapter",
   license = "Apache License 2.0",
   maintainer = "admin@casbin.org"
}
dependencies = {
   "casbin >= 1.29.0",
   "pgmoon >= 1.14.0-1",
   "lua-resty-mysql >= 0.15-0"
}
build = {
   type = "builtin",
   modules = {
      ["Adapter"] = "lib/resty/casbin/adapter.lua",
      ["casbin.mysql"] = "lib/resty/casbin/mysql.lua",
      ["casbin.postgres"] = "lib/resty/casbin/postgres.lua",
   }
}
