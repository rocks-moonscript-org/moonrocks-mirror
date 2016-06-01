package = "turbo-sqlite3"
version = "1.0-1"

source = {
 url = "git://github.com/olueiro/turbo-sqlite3.git",
 branch = "master"
}

description = {
 summary = "Pure LuaJIT binding for SQLite3 databases for Turbo.lua",
 detailed = [[
Pure LuaJIT binding for SQLite3 databases for Turbo.lua
]],
 homepage = "https://github.com/olueiro/turbo-sqlite3",
 license = "MIT"
}

dependencies = {
 "turbo"
}

build = {
 type = "builtin",
 modules = {
  ["turbo-sqlite3"] = "turbo-sqlite3.lua",
  _templet = "_templet.lua",
  _xsys = "_xsys.lua"
 },
 copy_directories = {}
}