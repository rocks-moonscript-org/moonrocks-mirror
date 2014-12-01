package = "cdb"
version = "1.0-1"
source = {
  url = "git://github.com/istr/lua-cdb",
  tag = "v1.0"
}
description = {
  summary = "A Lua binding to djb's CDB.",
  detailed = [[
    Lua binding to D.J. Bernstein's CDB.
    A small standalone rock to read and traverse CDB data files.
  ]],
  homepage = "git://github.com/istr/lua-cdb",
  license = "MIT/X11"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    cdb = {
      sources = {"src/cdb.c", "src/lcdb.c"},
      incdirs = {"inc"}
    }
  }
}

