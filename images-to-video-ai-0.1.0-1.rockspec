package = "images-to-video-ai"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/images_to_video_ai_luarocks/images-to-video-ai-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Image to Video AI generator site metadata.",
   detailed = [[
Minimal metadata package for the Image to Video AI generator website.
   ]],
   homepage = "https://imagestovideoai.com/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["images_to_video_ai"] = "images_to_video_ai.lua"
   }
}
