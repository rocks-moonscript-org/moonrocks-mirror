-- tk: lua
-- SPDX-License-Identifier: MIT
-- SPDX-FileCopyrightText: 2023 Birch Point SWE
package = "santoku-cli"
version = "6.0.4-1"
rockspec_format = "3.0"

source = {
  url = "https://releases.santoku.dev/santoku-cli/6.0.4-1/santoku-cli-6.0.4-1.tar.gz",
}

description = {
  homepage = "https://santoku.dev/santoku-cli",
  license = "MIT"
}

dependencies = {
  "lua == 5.1",
"santoku >= 5.0.0, < 6.0.0",
"santoku-fs >= 2.5.2, < 3.0.0",
"santoku-template >= 3.0.3, < 4.0.0",
"santoku-bundle >= 3.3.4, < 4.0.0",
"santoku-system >= 3.0.1, < 4.0.0",
"santoku-test-runner >= 2.0.11, < 3.0.0",
"santoku-make >= 10.2.4, < 11.0.0",
"argparse >= 0.7.1-1, < 1.0.0",
"lua-cjson >= 2.1.0"
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