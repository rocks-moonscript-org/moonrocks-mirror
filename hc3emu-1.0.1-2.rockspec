package = "hc3emu"
version = "1.0.1-2"
source = {
   url = "git://github.com/jangabrielsson/hc3emu",
   tag = "v1.0.1",
}
description = {
   summary = "hc3emu is a emulator for developing Fibaro HC3 QuickApps offline.",
   detailed = [[
      hc3emu is a emulator for developing Fibaro HC3 QuickApps offline.
      It's based on copas for asynchronous network calls.
      It can automatically depploy a "QA proxy" on the HC3 funneling 
      onAction and uiEvents back to the QA running in the emulator, thus
      allowing the QAs UI to be tested.
   ]],
   homepage = "https://github.com/jangabrielsson/hc3emu",
   license = "MIT/X11" 
}
dependencies = {
   "lua >= 5.3, <= 5.4",
   --"luasocket >= 2.0, <= 2.2",
   "copas >= 4.7.1-1",
   "luamqtt >= 3.4.3-1",
   "lua-cjson-219 >= 2.1.0.9-1",
   "mobdebug >= 0.80-1",
}
build = {
   type = "builtin",
   modules = {
      -- A simple module written in Lua
      hc3emu = "hc3emu.lua",
  }
}
