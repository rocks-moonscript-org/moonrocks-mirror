package = "sht20"
version = "0.1.1-1"
source = {
   url = "https://github.com/nubix-io/lua-sht20/archive/0.1.1-1.tar.gz",
   dir = "lua-sht20-0.1.1-1"
}
description = {
   summary = "SHT20 industrial atmospheric sensor driver",
   detailed = [[
     The SHT20 is an industrial temperature and humidity sensor.
   ]],
   homepage = "https://github.com/nubix-io/lua-sht20",
   maintainer = "Nubix Inc.",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
    ["sht20.modbus"] = "src/sht20/modbus.lua"
   }
}
