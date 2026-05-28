package = "ai-image-upscaler"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/ai_image_upscaler_luarocks/ai-image-upscaler-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for AI Image Upscaler tool page metadata.",
   detailed = [[
Minimal metadata package for the AI Image Upscaler tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/ai-image-upscaler",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ai_image_upscaler"] = "ai_image_upscaler.lua"
   }
}
