package = "gpt-image-2"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/gpt_image_2_luarocks/gpt-image-2-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for GPT Image 2 tool page metadata.",
   detailed = [[
Minimal metadata package for the GPT Image 2 tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/gpt-image-2",
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
