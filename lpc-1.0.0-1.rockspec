package = "lpc"
version = "1.0.0-1"
source = {
   url = "http://lua.net-core.org/dl/telesto/lpc-1.0.0.tar.gz",
}
description = {
   summary = "Lua Process Call",
   detailed = [[
     Allows Lua scripts to call external processes while capturing both
     their input and output(in contrast to Lua's popen function that can
     only capture one or the other).
   ]],
   license = "MIT/X11",
   homepage = "http://lua.net-core.org/sputnik.lua?p=Telesto:About"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "make",
   build_variables = {
      LDFLAGS = "$(LIBFLAG)",
      LUA_PREFIX = "$(LUA_DIR)"
   },
   install_variables = {
      INSTALL_PREFIX = "$(LIBDIR)"
   }
}
