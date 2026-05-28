package = "vidu-q4"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/vidu_q4_luarocks/vidu-q4-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Vidu Q4 tool page metadata.",
   detailed = [[
Minimal metadata package for the Vidu Q4 tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/vidu-q4",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["vidu_q4"] = "vidu_q4.lua"
   }
}
