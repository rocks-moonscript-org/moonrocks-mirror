package = "config"
version = "1.0.0-1"
source = {
   url = "http://lua.net-core.org/dl/telesto/config-1.0.0.tar.gz",
}
description = {
   summary = "Easy configuration file loading",
   detailed = [[
      Allows to load config fileswith a lua-like syntax but with sugar.
      I.e: You can have a file like:
      foo = 3
      bar.plop = 5
      bar.zaz = { 3, 4 }

      This will load just fine, even if this is not valid Lua code (bar is not defined)
   ]],
   license = "MIT/X11",
   homepage = "http://lua.net-core.org/sputnik.lua?p=Telesto:About"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "none",
   install = {
      lua = {
         ["config"] = "config.lua",
      }
   }
}
