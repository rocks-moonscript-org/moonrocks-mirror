rockspec_format = "3.0"
package = "cppjwt"
description = {
   summary = "A small wrapper arround jwt-cpp to decode and verify jwt",
   detailed = "",
   license = "GPL-2",
   homepage = "https://github.com/abom/lua-cpp-jwt",
   issues_url = "https://github.com/abom/lua-cpp-jwt/issues/new",
   maintainer = "Abdelrahman Ghanem",
   labels = {"jwt", "cpp"}
}
version = "0.0-1"
source = {
   url = "git://github.com/abom/lua-cpp-jwt.git"
}

dependencies = {
   "lua-cjson"
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
