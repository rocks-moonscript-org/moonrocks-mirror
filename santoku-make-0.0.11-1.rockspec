

package = "santoku-make"
version = "0.0.11-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/treadwelllane/lua-santoku-make/releases/download/0.0.11-1/santoku-make-0.0.11-1.tar.gz",
}

description = {
  homepage = "https://github.com/treadwelllane/lua-santoku-make",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "santoku >= 0.0.157-1",
  "santoku-fs >= 0.0.11-1",
  "santoku-system >= 0.0.8-1",
  "basexx >= 0.4.1-1",
  
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
