-- tk: lua
-- SPDX-License-Identifier: MIT
-- SPDX-FileCopyrightText: 2023 Birch Point SWE
package = "santoku-resty"
version = "2.10.0-1"
rockspec_format = "3.0"

source = {
  url = "https://releases.santoku.dev/santoku-resty/2.10.0-1/santoku-resty-2.10.0-1.tar.gz",
}

description = {
  homepage = "https://santoku.dev/santoku-resty",
  license = "MIT"
}

dependencies = {
  "lua == 5.1",
"santoku >= 2.10.1, < 4.0.0",
"santoku-jwt >= 0.1.0, < 1.0.0",
"lua-resty-http == 0.17.2-0",
"lua-resty-openssl == 1.5.1-1",
"santoku-sqlite >= 6.1.0, < 7.0.0",
"santoku-system >= 2.2.0, < 3.0.0"
}

build_dependencies = {
  "santoku >= 2.10.1, < 4.0.0",
"santoku-fs >= 2.0.0, < 3.0.0",
"santoku-system >= 2.2.0, < 3.0.0"
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