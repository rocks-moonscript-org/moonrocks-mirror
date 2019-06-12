package = "sgp30"
version = "0.1.0-1"
source = {
   url = "https://github.com/BixData/lua-sgp30/archive/0.1.0-1.tar.gz",
   dir = "lua-sgp30-0.1.0-1"
}
description = {
   summary = "SGP30 I²C Air Quality Sensor driver",
   detailed = [[
     The SGP30 is a digital multi-pixel gas sensor designed for easy integration
     into air purifier, demand-controlled ventilation, and IoT applications. 
   ]],
   homepage = "https://github.com/BixData/lua-sgp30",
   maintainer = "David Rauschenbach",
   license = "MIT"
}
dependencies = {
   "bit32 <= 5.3.2-0",
   "lua >= 5.1, < 5.4",
   "lua-periphery >= 1.1.1",
   "luasocket >= 2.0"
}
build = {
   type = "builtin",
   modules = {
      sgp30 = "src/sgp30.lua"
   }
}
