-- tk: lua
package = "santoku-resty"
version = "2.1.1-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/birchpointswe/lua-santoku-resty/releases/download/2.1.1-1/santoku-resty-2.1.1-1.tar.gz",
}

description = {
  homepage = "https://github.com/birchpointswe/lua-santoku-resty",
  license = "MIT"
}

dependencies = {
  "lua == 5.1",
"santoku >= 2.0.0, < 3.0.0",
"lua-resty-http == 0.17.2-0",
"lua-resty-openssl == 1.5.1-1",
"lua-resty-jwt == 0.2.3-0"
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