package = "hailuo3-app"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/hailuo3_app_luarocks/hailuo3-app-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Hailuo3 AI video generator site metadata.",
   detailed = [[
Minimal metadata package for the Hailuo3 AI video generator website.
   ]],
   homepage = "https://www.hailuo3.app",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["hailuo3_app"] = "hailuo3_app.lua"
   }
}
