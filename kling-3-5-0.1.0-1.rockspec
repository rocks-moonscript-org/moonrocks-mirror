package = "kling-3-5"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/kling_3_5_luarocks/kling-3-5-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Kling 3.5 tool page metadata.",
   detailed = [[
Minimal metadata package for the Kling 3.5 tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/kling-3-5",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["kling_3_5"] = "kling_3_5.lua"
   }
}
