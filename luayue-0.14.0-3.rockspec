package = "luayue"
version = "0.14.0-3"
source = {
   url = "git+https://github.com/SolarLibraries/luayue",
   tag = "v0.14.0-3",
   branch = "compile"
}
description = {
   detailed = "A library for creating native cross-platform GUI apps",
   homepage = "https://github.com/yue/yue",
   license = "LGPLv3"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "make",
   build_variables = {
      CC = "$(CC)",
      CFLAGS = "$(CFLAGS)",
      CURL = "$(CURL)",
      CXX = "$(CXX)",
      LIBFLAG = "$(LIBFLAG)",
      LUA = "$(LUA)",
      LUA_BINDIR = "$(LUA_BINDIR)",
      LUA_INCDIR = "$(LUA_INCDIR)",
      LUA_LIBDIR = "$(LUA_LIBDIR)",
      YUE_VERSION = "0.14.0"
   },
   install_variables = {
      INST_BINDIR = "$(BINDIR)",
      INST_CONFDIR = "$(CONFDIR)",
      INST_LIBDIR = "$(LIBDIR)",
      INST_LUADIR = "$(LUADIR)",
      INST_PREFIX = "$(PREFIX)"
   },
   makefile = "Makefile"
}
