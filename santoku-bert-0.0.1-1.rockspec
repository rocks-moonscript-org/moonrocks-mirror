

package = "santoku-bert"
version = "0.0.1-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/treadwelllane/lua-santoku-bert/releases/download/0.0.1-1/santoku-bert-0.0.1-1.tar.gz",
}

description = {
  homepage = "https://github.com/treadwelllane/lua-santoku-bert",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "santoku >= 0.0.100-1",
  "santoku-python >= 0.0.9-1"
}

test_dependencies = {
  "luafilesystem >= 1.8.0-1",
  "luassert >= 1.9.0-1",
  "luacov >= 0.15.0-1",
  "luasocket >= 3.1.0-1",
  "inspect >= 3.1.3-0"
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
