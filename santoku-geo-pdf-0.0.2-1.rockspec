

package = "santoku-geo-pdf"
version = "0.0.2-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/treadwelllane/lua-santoku-geo-pdf/releases/download/0.0.2-1/santoku-geo-pdf-0.0.2-1.tar.gz",
}

description = {
  homepage = "https://github.com/treadwelllane/lua-santoku-geo-pdf",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "lua-zlib >= 1.2-2"
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

