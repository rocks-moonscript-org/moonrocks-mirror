package = "trellis3-com"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/trellis3_com_luarocks/trellis3-com-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Trellis 3 AI art site metadata.",
   detailed = [[
Minimal metadata package for the Trellis 3 website.
   ]],
   homepage = "https://www.trellis3.com",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["trellis3_com"] = "trellis3_com.lua"
   }
}
