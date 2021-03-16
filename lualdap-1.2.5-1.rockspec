package="lualdap"
version="1.2.5-1"
source = {
   url = "git://github.com/lualdap/lualdap",
   tag = "v1.2.5",
}
description = {
   summary = "Simple interface from Lua to an LDAP Client",
   detailed = [[
      Simple interface from Lua to an LDAP client.
   ]],
   homepage = "https://github.com/bdellegrazie/lualdap",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
}
external_dependencies = {
   LDAP = {
      header = "ldap.h",
      library = "ldap",
   },
   LBER = {
      header = "lber.h",
      library = "lber",
   },
}
build = {
   type = "make",
   variables = {
      COVERAGE="$(COVERAGE)",
      JUNITXML="$(JUNITXML)",
   },
   build_variables = {
      CFLAGS="$(CFLAGS) -std=c89 -pedantic -Wall -Werror",
      LIBFLAG="$(LIBFLAG)",
      LUA_LIBDIR="$(LUA_LIBDIR)",
      LUA_BINDIR="$(LUA_BINDIR)",
      LUA_INCDIR="$(LUA_INCDIR)",
      LUA="$(LUA)",
      LDAP_LIBDIR="$(LDAP_LIBDIR)",
      LDAP_INCDIR="$(LDAP_INCDIR)",
      LBER_LIBDIR="$(LBER_LIBDIR)",
      LBER_INCDIR="$(LBER_INCDIR)",
   },
   install_variables = {
      INST_PREFIX="$(PREFIX)",
      INST_BINDIR="$(BINDIR)",
      INST_LIBDIR="$(LIBDIR)",
      INST_LUADIR="$(LUADIR)",
      INST_CONFDIR="$(CONFDIR)",
   },
}
