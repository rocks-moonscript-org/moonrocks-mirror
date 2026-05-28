package = "hunyuan-image-4-0"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/hunyuan_image_4_0_luarocks/hunyuan-image-4-0-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Hunyuan Image 4.0 tool page metadata.",
   detailed = [[
Minimal metadata package for the Hunyuan Image 4.0 tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/hunyuan-image-4-0",
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
