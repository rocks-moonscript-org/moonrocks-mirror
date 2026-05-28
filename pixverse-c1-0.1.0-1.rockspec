package = "pixverse-c1"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/pixverse_c1_luarocks/pixverse-c1-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Pixverse C1 tool page metadata.",
   detailed = [[
Minimal metadata package for the Pixverse C1 tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/pixverse-c1",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["pixverse_c1"] = "pixverse_c1.lua"
   }
}
