

package = "santoku"
version = "0.0.96-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/treadwelllane/lua-santoku/releases/download/0.0.96-1/santoku-0.0.96-1.tar.gz",
}

description = {
  homepage = "https://github.com/treadwelllane/lua-santoku",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

test_dependencies = {
  "luacov >= 0.15.0",
  "luacheck >= 1.1.0-1",
  "lua-zlib >= 1.2-2",
  "luafilesystem >= 1.8.0-1",
  "lsqlite3 >= 0.9.5",
  "inspect >= 3.1.3-0",
  "luassert >= 1.9.0-1"
}

build = {
  type = "make",
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

test = {
  type = "command",
  command = "make test"
}
