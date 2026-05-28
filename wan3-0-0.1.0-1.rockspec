package = "wan3-0"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/wan3_0_luarocks/wan3-0-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Wan 3 tool page metadata.",
   detailed = [[
Minimal metadata package for the Wan 3 tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/wan3-0",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["wan3_0"] = "wan3_0.lua"
   }
}
