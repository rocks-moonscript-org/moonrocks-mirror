package = "luasyslog"
version = "1.0.0-1"
source = {
   url = "http://lua.net-core.org/dl/telesto/luasyslog-1.0.0.tar.gz",
}
description = {
   summary = "Syslog logging for Lua",
   detailed = [[
     Addon for lualogging to log to the system log on unix systems.
   ]],
   license = "MIT/X11",
   homepage = "http://lua.net-core.org/sputnik.lua?p=Telesto:About"
}
dependencies = {
   "lua >= 5.1",
   "lualogging >= 1.1.4",
}
build = {
   type = "make",
   build_variables = {
      LDFLAGS = "$(LIBFLAG)",
      LUA_PREFIX = "$(LUA_DIR)"
   },
   install_variables = {
      INSTALL_PREFIX = "$(LIBDIR)"
   },
   install_target = "install_nolua",
   install = {
      lua = {
         ["logging.syslog"] = "syslog.lua",
      }
   }
}
