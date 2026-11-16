-- tk: lua
-- SPDX-License-Identifier: MIT
-- SPDX-FileCopyrightText: 2023 Birch Point SWE
package = "santoku-web"
version = "12.0.0-1"
rockspec_format = "3.0"

source = {
  url = "https://releases.santoku.dev/santoku-web/12.0.0-1/santoku-web-12.0.0-1.tar.gz",
}

description = {
  homepage = "https://santoku.dev/santoku-web",
  license = "MIT"
}

dependencies = {
  "lua == 5.1",
"santoku >= 5.1.0, < 6.0.0",
"santoku-mustache >= 2.2.4, < 3.0.0",
"santoku-http >= 4.0.0, < 5.0.0",
"santoku-lpeg >= 3.7.3, < 4.0.0",
"santoku-fs >= 2.5.2, < 3.0.0",
"lua-cjson == 2.1.0.10-1"
}

build_dependencies = {
  
}

external_dependencies = {
  
}

build = {
  type = "make",
  makefile = "Makefile",
  variables = {
    LIB_EXTENSION = "$(LIB_EXTENSION)",
    TK_ROCKS_DIR = "$(PREFIX)/../..",
  },
  build_variables = {
    CC = "$(CC)",
    CXX = "$(CXX)",
    AR = "$(AR)",
    RANLIB = "$(RANLIB)",
    CFLAGS = "$(CFLAGS)",
    LIBFLAG = "$(LIBFLAG)",
    LUA_INCDIR = "$(LUA_INCDIR)",
    LUA_LIBDIR = "$(LUA_LIBDIR)",
    LUA = "$(LUA)",
    
  },
  install_variables = {
    CC = "$(CC)",
    INST_PREFIX = "$(PREFIX)",
    INST_BINDIR = "$(BINDIR)",
    INST_LIBDIR = "$(LIBDIR)",
    INST_LUADIR = "$(LUADIR)",
  }
}