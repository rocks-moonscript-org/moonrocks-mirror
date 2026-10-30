-- tk: lua
-- SPDX-License-Identifier: MIT
-- SPDX-FileCopyrightText: 2023 Birch Point SWE
package = "santoku-learn"
version = "16.0.1-1"
rockspec_format = "3.0"

source = {
  url = "https://releases.santoku.dev/santoku-learn/16.0.1-1/santoku-learn-16.0.1-1.tar.gz",
}

description = {
  homepage = "https://santoku.dev/santoku-learn",
  license = "MIT"
}

dependencies = {
  "lua == 5.1",
"santoku >= 3.4.2, < 4.0.0",
"santoku-matrix >= 6.0.1, < 7.0.0",
"santoku-fs >= 2.4.1, < 3.0.0",
"santoku-lpeg >= 3.0.0, < 4.0.0"
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