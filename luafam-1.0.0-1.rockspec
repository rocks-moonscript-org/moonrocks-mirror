package = "luafam"
version = "1.0.0-1"
source = {
   url = "http://lua.net-core.org/dl/telesto/luafam-1.0.0.tar.gz",
}
description = {
   summary = "Lua File Alteration Monitoring Interface",
   detailed = [[
     Allows Lua scripts to use FAM to monitor file changes
   ]],
   license = "MIT/X11",
   homepage = "http://lua.net-core.org/sputnik.lua?p=Telesto:About"
}
dependencies = {
   "lua >= 5.1",
}
external_dependencies = {
   FAM = {
      header = "fam.h"
   }
}
build = {
   type = "make",
   build_variables = {
      LDFLAGS = "$(LIBFLAG)",
      LUA_PREFIX = "$(LUA_DIR)",
      CFLAGS = "-I$(LUA_INCDIR) -I$(FAM_INCDIR)",
      LIBS = "-lfam -L$(FAM_LIBDIR)"
   },
   install_variables = {
      INSTALL_PREFIX = "$(LIBDIR)"
   }
}
