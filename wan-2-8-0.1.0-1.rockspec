package = "wan-2-8"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/wan_2_8_luarocks/wan-2-8-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Wan 2.8 tool page metadata.",
   detailed = [[
Minimal metadata package for the Wan 2.8 tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/wan-2-8",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["wan_2_8"] = "wan_2_8.lua"
   }
}
