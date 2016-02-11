rockspec_format = "1.0"
package = "ber"
version = "0.3.1-1"
source = {
   url = "git://github.com/aperezdc/lua-ber",
   tag = "v0.3.1"
}
description = {
   summary = "BER and ASN.1 encoder and decoder",
   homepage = "https://github.com/aperezdc/lua-ber",
   license = "Public Domain",
   maintainer = "Adrián Pérez de Castro <aperez@igalia.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "make",
   build_variables = {
      CFLAGS = "$(CFLAGS)",
      LIBFLAG = "$(LIBFLAG)",
      LUA = "$(LUA)",
      LUA_BINDIR = "$(LUA_BINDIR)",
      LUA_INCDIR = "$(LUA_INCDIR)",
      LUA_LIBDIR = "$(LUA_LIBDIR)"
   },
   install_variables = {
      INST_BINDIR = "$(BINDIR)",
      INST_CONFDIR = "$(CONFDIR)",
      INST_LIBDIR = "$(LIBDIR)",
      INST_LUADIR = "$(LUADIR)",
      INST_PREFIX = "$(PREFIX)"
   }
}
