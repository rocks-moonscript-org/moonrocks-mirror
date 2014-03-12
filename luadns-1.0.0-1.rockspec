package = "luadns"
version = "1.0.0-1"
source = {
   url = "http://lua.net-core.org/dl/telesto/luadns-1.0.0.tar.gz",
}
description = {
   summary = "Lua DNS",
   detailed = [[
     Allows Lua scripts to call on the system's DNS library to resolve hosts,
     get MX records, ...
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
