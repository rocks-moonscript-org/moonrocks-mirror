rockspec_format = "3.0"
package = "sqlite"
version = "v1.0.0-1"
description = {
  detailed = "",
  homepage = "https://github.com/tami5/sqlite.lua",
  labels = { "sqlite3", "binding", "luajit", "database" },
  license = "MIT",
  summary = "SQLite/LuaJIT binding and a highly opinionated wrapper for storing, retrieving, caching, and persisting [SQLite] databases",
}
source = {
  url = "git://github.com/tami5/sqlite.lua.git",
  tag = "v1.0.0",
}
dependencies = {
  "luv",
}
build = {
  type = "builtin",
  modules = {
    ["sqlite.db"] = "lua/sqlite/db.lua",
    ["sqlite.defs"] = "lua/sqlite/defs.lua",
    ["sqlite.helpers"] = "lua/sqlite/helpers.lua",
    ["sqlite.init"] = "lua/sqlite/init.lua",
    ["sqlite.json"] = "lua/sqlite/json.lua",
    ["sqlite.tbl"] = "lua/sqlite/tbl.lua",
    ["sqlite.tbl.cache"] = "lua/sqlite/tbl/cache.lua",
    ["sqlite.tbl.extend"] = "lua/sqlite/tbl/extend.lua",
    ["sqlite.utils"] = "lua/sqlite/utils.lua",
  },
}
