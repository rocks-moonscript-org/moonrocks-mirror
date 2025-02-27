package="LuaSNMP"
version="1.1.1-1"
-- LuaDist source
source = {
  tag = "1.1.1-1",
  url = "git://github.com/hleuwer/luasnmp.git"
}
description = {
   summary = "A binding to the net-snmp library",
   detailed = [[
      LuaSNMP is a binding to the net-snmp library.
      It allows to implement SNMP manager functionality using
      the Lua programming language.
   ]],
   homepage = "http://github.com/hleuwer/luasnmp",
   license = "MIT"
}
supported_platforms = {
   "linux", "macosx"
}
dependencies = {
   "lua >= 5.2"
}
external_dependencies = {
   NETSNMP = {
      header = "net-snmp/net-snmp-config.h"
   }
}
build = {
   type = "make",
   variables = {
      INSTALL_ROOT = "$(PREFIX)",
      INSTALL_SHARE = "$(LUADIR)",
      INSTALL_LIB = "$(LIBDIR)",
      LUAINC = "$(LUA_INCDIR) -I$(NETSNMP_INCDIR)",
      LDFLAGS = "$(LIBFLAG) -L$(NETSNMP_LIBDIR)",
   }
}
