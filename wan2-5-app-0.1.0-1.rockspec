package = "wan2-5-app"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/wan2_5_app_luarocks/wan2-5-app-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Wan2.5 AI platform site metadata.",
   detailed = [[
Minimal metadata package for the Wan2.5 AI platform website.
   ]],
   homepage = "https://www.wan2-5.app",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["wan2_5_app"] = "wan2_5_app.lua"
   }
}
