package = "lua-resty-nanoid"
version = "0.0.1-2"
source = {
   url = "git://github.com/CriztianiX/lua-resty-nanoid.git"
}
description = {
   detailed = "nanoid for luajit2 and openresty using a single header NanoID implementation in C from https://github.com/NerdyPepper/nanoid",
   homepage = "https://github.com/CriztianiX/lua-resty-nanoid",
   license = "MIT"
}

   build = {
      type = "make",
      build_variables = {
         CFLAGS="$(CFLAGS)",
         LIBFLAG="$(LIBFLAG)",
         LUA_LIBDIR="$(LUA_LIBDIR)",
         LUA_BINDIR="$(LUA_BINDIR)",
         LUA_INCDIR="$(LUA_INCDIR)",
         LUA="$(LUA)",
      },
      install_variables = {
         INST_PREFIX="$(PREFIX)",
         INST_BINDIR="$(BINDIR)",
         INST_LIBDIR="$(LIBDIR)",
         INST_LUADIR="$(LUADIR)",
         INST_CONFDIR="$(CONFDIR)",
      },
   }
