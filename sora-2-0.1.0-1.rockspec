package = "sora-2"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/sora_2_luarocks/sora-2-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Sora 2 tool page metadata.",
   detailed = [[
Minimal metadata package for the Sora 2 tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/sora-2",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["sora_2"] = "sora_2.lua"
   }
}
