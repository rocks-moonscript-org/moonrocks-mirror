-- tk: lua
-- SPDX-License-Identifier: MIT
-- SPDX-FileCopyrightText: 2023 Birch Point SWE
package = "santoku-tls"
version = "0.1.1-1"
rockspec_format = "3.0"

source = {
  url = "https://releases.santoku.dev/santoku-tls/0.1.1-1/santoku-tls-0.1.1-1.tar.gz",
}

description = {
  homepage = "https://santoku.dev/#santoku-tls",
  license = "MIT"
}

dependencies = {
  "lua == 5.1",
"santoku >= 2.10.0, < 4.0.0"
}

external_dependencies = {
  
  ["OPENSSL"] = {
    ["header"] = "openssl/ssl.h",
    ["library"] = "ssl"
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
    AR = "$(AR)",
    RANLIB = "$(RANLIB)",
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