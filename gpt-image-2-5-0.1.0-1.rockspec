package = "gpt-image-2-5"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/gpt_image_2_5_luarocks/gpt-image-2-5-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for GPT Image 2.5 AI image generator site metadata.",
   detailed = [[
Minimal metadata package for the GPT Image 2.5 AI image generator and photo editor website.
   ]],
   homepage = "https://gptimage2-5.net/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["gpt_image_2_5"] = "gpt_image_2_5.lua"
   }
}
