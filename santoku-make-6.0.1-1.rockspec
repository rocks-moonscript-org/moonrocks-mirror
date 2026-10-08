-- tk: lua
-- SPDX-License-Identifier: MIT
-- SPDX-FileCopyrightText: 2023 Birch Point SWE
package = "santoku-make"
version = "6.0.1-1"
rockspec_format = "3.0"

source = {
  url = "https://releases.santoku.dev/santoku-make/6.0.1-1/santoku-make-6.0.1-1.tar.gz",
}

description = {
  homepage = "https://santoku.dev/#santoku-make",
  license = "MIT"
}

dependencies = {
  "lua == 5.1",
"lua-cjson >= 2.1.0",
"santoku >= 2.0.6, < 3.0.0",
"santoku-fs >= 2.2.0, < 3.0.0",
"santoku-web >= 2.0.0, < 3.0.0",
"santoku-system >= 2.2.0, < 3.0.0",
"santoku-template >= 2.0.0, < 3.0.0",
"santoku-mustache >= 2.0.0, < 3.0.0",
"santoku-bundle >= 2.1.0, < 3.0.0",
"santoku-lpeg >= 2.3.0, < 3.0.0"
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