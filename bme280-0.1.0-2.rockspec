package = "bme280"
version = "0.1.0-2"
source = {
   url = "https://github.com/BixData/lua-bme280/archive/0.1.0-2.tar.gz",
   dir = "lua-bme280-0.1.0-2"
}
description = {
   summary = "BME280 I²C Atmospheric Sensor driver",
   detailed = [[
     BME280 is a precision sensor for temperature, humidity, and barometric pressure.
     It features a very accurate pressure sensor, and an associated temperature sensor
     which helps calibrate pressure readings.
   ]],
   homepage = "https://github.com/BixData/lua-bme280",
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
      bme280 = "src/bme280.lua"
   }
}
