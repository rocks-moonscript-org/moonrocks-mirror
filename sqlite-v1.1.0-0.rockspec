rockspec_format = "3.0"
package = 'sqlite'
version = 'v1.1.0-0'
description = {
  detailed = "",
  homepage = "https://github.com/tami5/sqlite.lua",
  labels = { "sqlite3", "binding", "luajit", "database" },
  license = "MIT",
  summary = "SQLite/LuaJIT binding and a highly opinionated wrapper for storing, retrieving, caching, and persisting [SQLite] databases"
}
source = {
  url = 'git://github.com/tami5/sqlite.lua.git',
  tag = "v1.1.0"
}
dependencies = {
  "luv"
}
build = {
  type = "builtin",
  modules = {
  ["lua.sqlite.db.lua"] = "lua/sqlite/db.lua",
  ["lua.sqlite.defs.lua"] = "lua/sqlite/defs.lua",
  ["lua.sqlite.helpers.lua"] = "lua/sqlite/helpers.lua",
  ["lua.sqlite.init.lua"] = "lua/sqlite/init.lua",
  ["lua.sqlite.json.lua"] = "lua/sqlite/json.lua",
  ["lua.sqlite.tbl.cache.lua"] = "lua/sqlite/tbl/cache.lua",
  ["lua.sqlite.tbl.extend.lua"] = "lua/sqlite/tbl/extend.lua",
  ["lua.sqlite.tbl.lua"] = "lua/sqlite/tbl.lua",
  ["lua.sqlite.utils.lua"] = "lua/sqlite/utils.lua"
}
}

