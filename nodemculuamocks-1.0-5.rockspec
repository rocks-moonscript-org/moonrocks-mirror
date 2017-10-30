package = "NodeMCULuaMocks"
version = "1.0-5"
source = {
   url = "git://github.com/fikin/nodemcu-lua-mocks",
   tag = "1.0-5"
}
description = {
   summary = "NodeMCU API mocks",
   detailed = [[
      Mocks of NodeMCU Lua API useful for unit testing.
   ]],
   homepage = "https://github.com/fikin/nodemcu-lua-mocks",
   license = "GPLv3"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "luaunit"
}
build = {
   type = "builtin",
   modules = {
      adc = "src/main/lua/adc.lua",
      dht = "src/main/lua/dht.lua",
      enduser_setup = "src/main/lua/enduser_setup.lua",
      file = "src/main/lua/file.lua",
      gpio = "src/main/lua/gpio.lua",
      i2c = "src/main/lua/i2c.lua",
      LinkedList = "src/main/lua/LinkedList.lua",
      mdns = "src/main/lua/mdns.lua",
      net = "src/main/lua/net.lua",
      node = "src/main/lua/node.lua",
      sjson = "src/main/lua/sjson.lua",
      Timer = "src/main/lua/Timer.lua",
      tmr = "src/main/lua/tmr.lua",
      u8g = "src/main/lua/u8g.lua",
      wifi = "src/main/lua/wifi.lua",
      JSON = "src/contrib/lua/JSON.lua"
   }
}