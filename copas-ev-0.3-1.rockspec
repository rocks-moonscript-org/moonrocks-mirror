package = "Copas-ev"
version = "0.3-1"
source = {
  url = "git://github.com/saucisson/lua-copas-ev.git",
  tag = "0.3",
}
description = {
   summary = "Copas using libev",
   detailed = [[
      Copas-ev is a reimplementation of Copas using libev. 
   ]],
   license = "MIT/X11",
   homepage = "https://github.com/saucisson/lua-copas-ev",
}
dependencies = {
   "copas >= 1.2",
   "coronest >= 0",
   "lua >= 5.1",
   "lua-ev >= 1.2",
   "luasocket >= 2.0",
}
build = {
   type = "module",
   modules = {
    ["copas.ev"] = "src/copas/ev.lua"
  }
}
