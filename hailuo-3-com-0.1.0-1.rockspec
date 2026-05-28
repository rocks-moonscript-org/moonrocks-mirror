package = "hailuo-3-com"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/hailuo_3_com_luarocks/hailuo-3-com-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Hailuo 3 AI video generator site metadata.",
   detailed = [[
Minimal metadata package for the Hailuo 3 AI video generator website.
   ]],
   homepage = "https://hailuo-3.com",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["hailuo_3_com"] = "hailuo_3_com.lua"
   }
}
