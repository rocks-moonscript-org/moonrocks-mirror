package = "pika-image"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/pika_image_luarocks/pika-image-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Pika Image tool page metadata.",
   detailed = [[
Minimal metadata package for the Pika Image tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/pika-image",
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
