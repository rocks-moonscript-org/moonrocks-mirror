package = "adxl345"
version = "0.1.0-0"
source = {
   url = "https://github.com/BixData/lua-adxl345/archive/0.1.0-0.tar.gz",
   dir = "adxl345-0.1.0-0"
}
description = {
   summary = "ADXL345 I²C Accelerometer sensor driver",
   detailed = [[
     The ADXL345 is a small, thin, ultralow power, 3-axis accelerometer with high
     resolution (13-bit) measurement at up to ±16 g. 
   ]],
   homepage = "https://github.com/BixData/lua-adxl345",
   maintainer = "David Rauschenbach",
   license = "MIT"
}
dependencies = {
   "bit32 <= 5.3.2-0",
   "lua >= 5.1, < 5.4",
   "lua-periphery >= 1.1.1"
}
build = {
   type = "builtin",
   modules = {
      adxl345 = "src/adxl345.lua"
   }
}
