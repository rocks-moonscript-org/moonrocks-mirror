package = "runway-gen-5"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/runway_gen_5_luarocks/runway-gen-5-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Runway Gen-5 tool page metadata.",
   detailed = [[
Minimal metadata package for the Runway Gen-5 tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/runway-gen-5",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["runway_gen_5"] = "runway_gen_5.lua"
   }
}
