package = "tdb"
version = "1.0-1"
source = {
  url = "git://github.com/istr/lua-tdb",
  tag = "v1.0"
}
description = {
  summary = "A Lua binding to Andrew Tridgell's TDB.",
  detailed = [[
    Lua binding to Andrew Tridgell's TDB, used in e.g. SAMBA.
    A small standalone rock to read, write and traverse TDB data files.
  ]],
  homepage = "git://github.com/istr/lua-tdb",
  license = "MIT/X11"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    tdb = {
      sources = {"src/tdb.c", "src/ltdb.c"},
      defines = {"LUA_BINDING=1"},
      incdirs = {"inc"}
    }
  }
}

