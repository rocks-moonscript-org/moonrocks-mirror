

package = "santoku-cli"
version = "0.0.147-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/treadwelllane/lua-santoku-cli/releases/download/0.0.147-1/santoku-cli-0.0.147-1.tar.gz",
}

description = {
  homepage = "https://github.com/treadwelllane/lua-santoku-cli",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "santoku >= 0.0.157-1",
  "santoku-fs >= 0.0.11-1",
  "santoku-template >= 0.0.7-1",
  "santoku-bundle >= 0.0.15-1",
  "santoku-system >= 0.0.8-1",
  "santoku-test-runner >= 0.0.9-1",
  "santoku-make >= 0.0.11-1",
  "argparse >= 0.7.1-1",
  
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
