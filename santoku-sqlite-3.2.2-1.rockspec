-- tk: lua
package = "santoku-sqlite"
version = "3.2.2-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/birchpointswe/lua-santoku-sqlite/releases/download/3.2.2-1/santoku-sqlite-3.2.2-1.tar.gz",
}

description = {
  homepage = "https://github.com/birchpointswe/lua-santoku-sqlite",
  license = "MIT"
}

dependencies = {
  "lua == 5.1",
"santoku >= 2.0.0, < 3.0.0",
"santoku-monocypher >= 2.0.1, < 3.0.0"
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
    CFLAGS = "$(CFLAGS)",
    LIBFLAG = "$(LIBFLAG)",
    LUA_INCDIR = "$(LUA_INCDIR)",
    LUA_LIBDIR = "$(LUA_LIBDIR)",
  },
  install_variables = {
    CC = "$(CC)",
    INST_PREFIX = "$(PREFIX)",
    INST_BINDIR = "$(BINDIR)",
    INST_LIBDIR = "$(LIBDIR)",
    INST_LUADIR = "$(LUADIR)",
  }
}