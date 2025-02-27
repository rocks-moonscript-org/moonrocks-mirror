package = "hc3emu"
version = "1.0.19-1"
source = {
   url = "git://github.com/jangabrielsson/hc3emu",
   tag = "v1.0.19",
}
description = {
   summary = "hc3emu is a emulator for developing Fibaro HC3 QuickApps offline.",
   detailed = [[
      hc3emu is a emulator for developing Fibaro HC3 QuickApps offline.
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
      ["hc3emu.emu"] = "lib/emu.lua", -- The main emulator
      ["hc3emu.colors"] = "lib/colors.lua",
      ["hc3emu.fibaro"] = "lib/fibaro.lua",
      ["hc3emu.quickapp"] = "lib/quickapp.lua",
      ["hc3emu.class"] = "lib/class.lua",
      ["hc3emu.qafuns"] = "lib/qafuns.lua",
      ["hc3emu.net"] = "lib/net.lua",
      ["HC3EMU.ui"] = "lib/ui.lua",
      ["hc3emu.util"] = "lib/util.lua",
      ["hc3emu.log"] = "lib/log.lua",
      ["hc3emu.db"] = "lib/db.lua",
      ["hc3emu.route"] = "lib/route.lua",
      ["hc3emu.proxy"] = "lib/proxy.lua",
      ["hc3emu.offline"] = "lib/offline.lua",
      ["hc3emu.qapi"] = "lib/qapi.lua",
      ["hc3emu.tools"] = "lib/tools.lua",
      ["hc3emu.stdStructs"] = "lib/stdStructs.lua",
  },
  copy_directories = { "doc", "rsrcs" }
}
