-- tk: lua
package = "santoku-web"
version = "2.2.0-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/birchpointswe/lua-santoku-web/releases/download/2.2.0-1/santoku-web-2.2.0-1.tar.gz",
}

description = {
  homepage = "https://github.com/birchpointswe/lua-santoku-web",
  license = "MIT"
}

dependencies = {
  "lua == 5.1",
"santoku >= 2.0.0, < 3.0.0",
"santoku-mustache >= 2.0.0, < 3.0.0",
"santoku-http >= 2.0.0, < 3.0.0",
"santoku-lpeg >= 2.0.0, < 3.0.0",
"lua-cjson == 2.1.0.10-1"
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