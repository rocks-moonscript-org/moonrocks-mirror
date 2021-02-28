package = "lua-sqlite3"
version = "0.4.2-1"

source = {
  url = "https://github.com/sodomon2/lua-sqlite3/archive/v0.4.2.zip",
  dir = "lua-sqlite3-0.4.2"
}

description = {
  summary = "lua-sqlite3 is a SQLite3 wrapper for Lua",
  -- detailed = [[]],
  license = "MIT/X11",
  homepage = "https://github.com/sodomon2/lua-sqlite3"
}

dependencies = {
  "lua >= 5.1"
}

external_dependencies = {
  SQLITE = {
    header = "sqlite3.h"
  }
}

build = {
  type = "builtin",
  copy_directories = { 'examples' },
  modules = {
    ["lua-sqlite3.core"] = {
      sources   = { "lua-sqlite3.c"  },
      libraries = { "sqlite3"          },
      incdirs   = { "$(SQLITE_INCDIR)" },
      libdirs   = { "$(SQLITE_LIBDIR)" }
    },
    ["lua-sqlite3.luasql"] = "luasql-sqlite3.lua",
    ["lua-sqlite3"]        = "lua-sqlite3.lua",
  },
}