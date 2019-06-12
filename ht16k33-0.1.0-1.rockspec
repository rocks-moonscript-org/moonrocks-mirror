package = "ht16k33"
version = "0.1.0-1"
source = {
   url = "https://github.com/BixData/lua-ht16k33/archive/0.1.0-1.tar.gz",
   dir = "lua-ht16k33-0.1.0-1"
}
description = {
   summary = "HT16K33 LED matrix driver",
   detailed = [[
     The Holtek HT16K33 is a memory mapping and multi-function LED controller driver. 
   ]],
   homepage = "https://github.com/BixData/lua-ht16k33",
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
      ht16k33                = "src/ht16k33.lua",
      ["ht16k33.matrix_8x8"] = "src/ht16k33/matrix_8x8.lua"
   }
}
