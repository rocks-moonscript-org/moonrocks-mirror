package = "lua-resty-casbin-adapter"
version = "1.0.0-1"
source = {
   url = "git://github.com/tom2nonames/lua-resty-casbin-adapter"
}
description = {
   summary = "OpenResty based adapter for Casbin",
   detailed = [[
      OpenResty based adapter for Casbin that supports policies from SQL-based databases (MySQL, PostgreSQL).
   ]],
   detailed = "OpenResty based adapter for Casbin that supports policies from SQL-based databases (MySQL, PostgreSQL).",
   homepage = "https://github.com/tom2nonames/lua-resty-casbin-adapter",
   license = "Apache License 2.0",
   maintainer = "tom2nonames@gmail.com"
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
