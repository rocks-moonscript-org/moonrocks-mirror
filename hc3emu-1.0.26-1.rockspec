package = "hc3emu"
version = "1.0.26-1"
source = {
   url = "git://github.com/jangabrielsson/hc3emu",
   tag = "v1.0.26",
}
description = {
   summary = "hc3emu is an emulator for developing Fibaro HC3 QuickApps offline.",
   detailed = [[
      hc3emu is an emulator for developing Fibaro HC3 QuickApps offline.
      It's based on copas for asynchronous network calls.
      It can automatically deploy a "QA proxy" on the HC3 funneling 
      onAction and uiEvents back to the QA running in the emulator, thus
      allowing the QAs UI to be tested.
   ]],
   homepage = "https://github.com/jangabrielsson/hc3emu",
   license = "MIT/X11" 
}
dependencies = {
   "lua >= 5.3, <= 5.4",
   "copas >= 4.7.1-1",
   "luamqtt >= 3.4.3-1",
   --"rapidjson >= 0.7.1-1", -- if already installed, will be used
   "lua-json >= 1.0.0-1",
   "bit32 >= 5.3.5.1-1",
   "lua-websockets-bit32 >= 2.0.1-7",
   --"luafilesystem >= 1.8.0-1", -- try to avoid this dependency...
   "mobdebug >= 0.80-1",
}
build = {
   type = "builtin",
   modules = {
      hc3emu = "src/hc3emu.lua", -- Proxy to load package or developer file
      ["hc3emu.emu"] = "src/emu.lua", -- The main emulator
      ["hc3emu.colors"] = "src/colors.lua",
      ["hc3emu.fibaro"] = "src/fibaro.lua",
      ["hc3emu.quickapp"] = "src/quickapp.lua",
      ["hc3emu.class"] = "src/class.lua",
      ["hc3emu.qafuns"] = "src/qafuns.lua",
      ["hc3emu.net"] = "src/net.lua",
      ["HC3EMU.ui"] = "src/ui.lua",
      ["hc3emu.util"] = "src/util.lua",
      ["hc3emu.log"] = "src/log.lua",
      ["hc3emu.db"] = "src/db.lua",
      ["hc3emu.route"] = "src/route.lua",
      ["hc3emu.proxy"] = "src/proxy.lua",
      ["hc3emu.offline"] = "src/offline.lua",
      ["hc3emu.qapi"] = "src/qapi.lua",
      ["hc3emu.tools"] = "src/tools.lua",
      ["hc3emu.stdStructs"] = "src/stdStructs.lua",
  },
  copy_directories = { "doc", "rsrcs" }
}
