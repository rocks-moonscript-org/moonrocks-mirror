package = "trellis2-art"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/trellis2_art_luarocks/trellis2-art-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Trellis 2 AI art site metadata.",
   detailed = [[
Minimal metadata package for the Trellis 2 website.
   ]],
   homepage = "https://www.trellis2.art",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["trellis2_art"] = "trellis2_art.lua"
   }
}
