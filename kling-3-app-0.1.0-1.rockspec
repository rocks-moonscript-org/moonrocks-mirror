package = "kling-3-app"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/kling_3_app_luarocks/kling-3-app-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Kling 3 AI platform site metadata.",
   detailed = [[
Minimal metadata package for the Kling 3 AI platform website.
   ]],
   homepage = "https://www.kling-3.app",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["kling_3_app"] = "kling_3_app.lua"
   }
}
