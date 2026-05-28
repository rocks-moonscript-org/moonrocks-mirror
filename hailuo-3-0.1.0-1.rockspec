package = "hailuo-3"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/hailuo_3_luarocks/hailuo-3-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Hailuo 3 tool page metadata.",
   detailed = [[
Minimal metadata package for the Hailuo 3 tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/hailuo-3",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["hailuo_3"] = "hailuo_3.lua"
   }
}
