-- tk: lua
-- SPDX-License-Identifier: MIT
-- SPDX-FileCopyrightText: 2023 Birch Point SWE
package = "santoku-socket"
version = "2.7.0-1"
rockspec_format = "3.0"

source = {
  url = "https://releases.santoku.dev/santoku-socket/2.7.0-1/santoku-socket-2.7.0-1.tar.gz",
}

description = {
  homepage = "https://santoku.dev/#santoku-socket",
  license = "MIT"
}

dependencies = {
  "lua == 5.1",
"santoku >= 2.7.0, < 3.0.0",
"santoku-system >= 2.0.0, < 3.0.0",
"santoku-fs >= 2.0.0, < 3.0.0",
"luasocket >= 3.1.0-1",
"luasec >= 1.3.2-1"
}

external_dependencies = {
  
  ["OPENSSL"] = {
    ["header"] = "openssl/x509.h",
    ["library"] = "crypto"
  }

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
    OPENSSL_INCDIR = "$(OPENSSL_INCDIR)",
    OPENSSL_LIBDIR = "$(OPENSSL_LIBDIR)",
  },
  install_variables = {
    CC = "$(CC)",
    INST_PREFIX = "$(PREFIX)",
    INST_BINDIR = "$(BINDIR)",
    INST_LIBDIR = "$(LIBDIR)",
    INST_LUADIR = "$(LUADIR)",
  }
}