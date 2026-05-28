package = "seedream-4"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/seedream_4_luarocks/seedream-4-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Seedream 4 tool page metadata.",
   detailed = [[
Minimal metadata package for the Seedream 4 tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/seedream-4",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["gpt_image_2"] = "gpt_image_2.lua"
   }
}
