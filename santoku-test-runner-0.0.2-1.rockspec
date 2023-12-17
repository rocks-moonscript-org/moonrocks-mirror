

package = "santoku-test-runner"
version = "0.0.2-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/treadwelllane/lua-santoku-test-runner/releases/download/0.0.2-1/santoku-test-runner-0.0.2-1.tar.gz",
}

description = {
  homepage = "https://github.com/treadwelllane/lua-santoku-test-runner",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "santoku >= 0.0.148-1",
  "santoku-system >= 0.0.2-1",
  "santoku-fs >= 0.0.3-1"
}

build = {
  type = "make",
  makefile = "Makefile",
  variables = {
    LIB_EXTENSION = "$(LIB_EXTENSION)",
  },
  build_variables = {
    CC = "$(CC)",
    CFLAGS = "$(CFLAGS)",
    LIBFLAG = "$(LIBFLAG)",
    LUA_BINDIR = "$(LUA_BINDIR)",
    LUA_INCDIR = "$(LUA_INCDIR)",
    LUA_LIBDIR = "$(LUA_LIBDIR)",
    LUA = "$(LUA)",
  },
  install_variables = {
    INST_PREFIX = "$(PREFIX)",
    INST_BINDIR = "$(BINDIR)",
    INST_LIBDIR = "$(LIBDIR)",
    INST_LUADIR = "$(LUADIR)",
    INST_CONFDIR = "$(CONFDIR)",
  }
}

