package = "omni-video-app"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/luarocks/omni_video_luarocks/omni-video-app-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Gemini Omni Video AI video generator site metadata.",
   detailed = [[
Minimal metadata package for the Gemini Omni Video AI video generator website.
   ]],
   homepage = "https://www.omni-video.app",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["omni_video"] = "omni_video.lua"
   }
}
