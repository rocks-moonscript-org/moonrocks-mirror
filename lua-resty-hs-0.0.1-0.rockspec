package = "lua-resty-hs"
version = "0.0.1-0"
source = {
   url = "git+https://github.com/fesily/lua-resty-hs.git"
}
description = {
   summary = "hyperscan for openresty",
   detailed = "hyperscan for openresty",
   homepage = "https://github.com/fesily/lua-resty-hs",
   license = "Apache-2.0",
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = 'make',
   build_variables = {
      CFLAGS = "$(CFLAGS)",
      LIBFLAG = "$(LIBFLAG)",
      LUA_LIBDIR = "$(LUA_LIBDIR)",
      LUA_BINDIR = "$(LUA_BINDIR)",
      LUA_INCDIR = "$(LUA_INCDIR)",
      LUA = "$(LUA)",
   },
   install_variables = {
      INST_PREFIX = "$(PREFIX)",
      INST_BINDIR = "$(BINDIR)",
      INST_LIBDIR = "$(LIBDIR)",
      INST_LUADIR = "$(LUADIR)",
      INST_CONFDIR = "$(CONFDIR)",
   },
}
