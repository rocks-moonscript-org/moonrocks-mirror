-- tk: lua
package = "santoku-make"
version = "5.0.12-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/birchpointswe/lua-santoku-make/releases/download/5.0.12-1/santoku-make-5.0.12-1.tar.gz",
}

description = {
  homepage = "https://github.com/birchpointswe/lua-santoku-make",
  license = "MIT"
}

dependencies = {
  "lua == 5.1",
"santoku >= 2.0.0, < 3.0.0",
"santoku-fs >= 2.1.0, < 3.0.0",
"santoku-web >= 2.0.0, < 3.0.0",
"santoku-system >= 2.0.0, < 3.0.0",
"santoku-template >= 2.0.0, < 3.0.0",
"santoku-mustache >= 2.0.0, < 3.0.0",
"santoku-bundle >= 2.0.0, < 3.0.0"
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