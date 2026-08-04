

package = "santoku-cli"
version = "1.0.1-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/birchpointswe/lua-santoku-cli/releases/download/1.0.1-1/santoku-cli-1.0.1-1.tar.gz",
}

description = {
  homepage = "https://github.com/birchpointswe/lua-santoku-cli",
  license = "MIT"
}

dependencies = {
  "lua == 5.1",
"santoku >= 1.0.0, < 2.0.0",
"santoku-fs >= 1.0.0, < 2.0.0",
"santoku-template >= 1.0.0, < 2.0.0",
"santoku-bundle >= 1.0.0, < 2.0.0",
"santoku-system >= 1.0.0, < 2.0.0",
"santoku-test-runner >= 1.0.0, < 2.0.0",
"santoku-make >= 1.0.2, < 2.0.0",
"santoku-mustache >= 1.0.0, < 2.0.0",
"argparse >= 0.7.1-1"
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
    AR = "$(AR)",
    LD = "$(LD)",
    NM = "$(NM)",
    LDSHARED = "$(LDSHARED)",
    RANLIB = "$(RANLIB)",
    CFLAGS = "$(CFLAGS)",
    LIBFLAG = "$(LIBFLAG)",
    LUA_BINDIR = "$(LUA_BINDIR)",
    LUA_INCDIR = "$(LUA_INCDIR)",
    LUA_LIBDIR = "$(LUA_LIBDIR)",
    LUA_LIBDIR = "$(LUA_LIBDIR)",
    LUA = "$(LUA)",
  },
  install_variables = {
    CC = "$(CC)",
    INST_PREFIX = "$(PREFIX)",
    INST_BINDIR = "$(BINDIR)",
    INST_LIBDIR = "$(LIBDIR)",
    INST_LUADIR = "$(LUADIR)",
    INST_CONFDIR = "$(CONFDIR)",
  }
}