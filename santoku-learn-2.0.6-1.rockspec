-- tk: lua
package = "santoku-learn"
version = "2.0.6-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/birchpointswe/lua-santoku-learn/releases/download/2.0.6-1/santoku-learn-2.0.6-1.tar.gz",
}

description = {
  homepage = "https://github.com/birchpointswe/lua-santoku-learn",
  license = "MIT"
}

dependencies = {
  "lua == 5.1",
"santoku >= 2.0.0, < 3.0.0",
"santoku-matrix >= 2.0.0, < 3.0.0",
"santoku-fs >= 2.0.0, < 3.0.0",
"santoku-lpeg >= 2.0.0, < 3.0.0"
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