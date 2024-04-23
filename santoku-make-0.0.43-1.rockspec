

package = "santoku-make"
version = "0.0.43-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/treadwelllane/lua-santoku-make/releases/download/0.0.43-1/santoku-make-0.0.43-1.tar.gz",
}

description = {
  homepage = "https://github.com/treadwelllane/lua-santoku-make",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "santoku >= 0.0.194-1",
  "santoku-fs >= 0.0.29-1",
  "santoku-system >= 0.0.22-1",
  "santoku-template >= 0.0.22-1",
  "santoku-bundle >= 0.0.27-1",
  "basexx >= 0.4.1-1"
}

external_dependencies = {
  
}

build = {
  type = "make",
  makefile = "Makefile",
  variables = {
    LIB_EXTENSION = "$(LIB_EXTENSION)",
  },
  build_variables = {
    CC = "$(CC)",
    CXX = "$(CXX)",
    AR = "$(AR)",
    LD = "$(LD)",
    NM = "$(NM)",
    LDSHARED = "$(LDSHARED)",
    RANLIB = "$(RANLIB)",
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