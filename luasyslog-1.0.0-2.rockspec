package = "luasyslog"
version = "1.0.0-2"
source = {
   url = "http://hisham.hm/tmp/luasyslog-1.0.0.tar.gz",
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
   type = "builtin",
   modules = {
      lsyslog = {
         sources = "lsyslog.c",
         defines = { "luaL_reg=luaL_Reg" },
      },
      ["logging.syslog"] = "syslog.lua",
   }
}
