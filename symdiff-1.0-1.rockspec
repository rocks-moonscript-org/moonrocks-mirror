package = "symdiff"
version = "1.0-1"
source = {
  url = "https://github.com/wqferr/symdiff",
  tag = "v1.0.1"
}

description = {
  summary = "Symbolic differentiation written in pure Lua.",
  detailed = [[
    This module fills the gap in symbolic math currently
    present in the Lua space. This supports differentiation
    of algebraic expressions of variables and/or functions
    wrapped by its API.
  ]],
  homepage = "https://github.com/wqferr/symdiff",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, < 5.5"
}

build = {
  type = "make",
  copy_directories = {"docs"},
  build_variables = {
    -- This is just here so luarocks doesn't complain I didn't pass it.
    -- It's not used at all, the Makefile just copies the files over.
    CFLAGS="$(CFLAGS)",
  },
  install_variables = {
    SOURCES="functional.lua functional.d.tl",
    INST_PREFIX="$(PREFIX)",
    INST_BINDIR="$(BINDIR)",
    INST_LIBDIR="$(LIBDIR)",
    INST_LUADIR="$(LUADIR)",
    INST_CONFDIR="$(CONFDIR)",
  },
}
