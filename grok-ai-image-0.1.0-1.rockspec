package = "grok-ai-image"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/grok_ai_image_luarocks/grok-ai-image-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Grok AI Image tool page metadata.",
   detailed = [[
Minimal metadata package for the Grok AI Image tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/grok-ai-image",
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
