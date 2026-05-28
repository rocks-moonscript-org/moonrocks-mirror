package = "seedance-2-5"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/seedance_2_5_luarocks/seedance-2-5-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Seedance 2.5 tool page metadata.",
   detailed = [[
Minimal metadata package for the Seedance 2.5 tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/seedance-2-5",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["seedance_2_5"] = "seedance_2_5.lua"
   }
}
