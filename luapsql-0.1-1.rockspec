package = "LuaPSQL"
version = "0.1-1"

source = {
  url = "http://luapsql.googlecode.com/files/luapsql-0.1-1.tar.gz",
  md5 = "a7109a143c589213f234cf6e9c89871c",
  dir = "luapsql-0.1"
}

description = {
  summary = "PostgreSQL client bindings for Lua",
  detailed = [[
    LuaPSQL provides bindings to PostgreSQL's libpq client library.
  ]],
  homepage = "http://luapsql.googlecode.com",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

external_dependencies = {
  LIBPQ = { header = "libpq-fe.h" }
}

build = {
  type = "builtin",
  modules = {
    psql = {
      sources = {"psql.c", "lpqtype.c"},
      incdirs = {"$(LIBPQ_INCDIR)"},
      libdirs = {"$(LIBPQ_LIBDIR)"},
      libraries = {"pq"},
    },
    -- Uncomment below to run test/test.lua
    --pqtype = {"pqtype.c", "lpqtype.c"}
  }
}

