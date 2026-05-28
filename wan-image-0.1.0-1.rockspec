package = "wan-image"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/wan_image_luarocks/wan-image-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Wan Image tool page metadata.",
   detailed = [[
Minimal metadata package for the Wan Image tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/wan-image",
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
