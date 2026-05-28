package = "gpt-image-2-dev"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/gpt_image_2_dev_luarocks/gpt-image-2-dev-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for GPT Image 2 AI image generator site metadata.",
   detailed = [[
Minimal metadata package for the GPT Image 2 AI image generator website.
   ]],
   homepage = "https://www.gpt-image-2.dev",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["gpt_image_2_dev"] = "gpt_image_2_dev.lua"
   }
}
