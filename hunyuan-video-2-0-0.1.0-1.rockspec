package = "hunyuan-video-2-0"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/hunyuan_video_2_0_luarocks/hunyuan-video-2-0-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Hunyuan Video 2.0 tool page metadata.",
   detailed = [[
Minimal metadata package for the Hunyuan Video 2.0 tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/hunyuan-video-2-0",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["hunyuan_video_2_0"] = "hunyuan_video_2_0.lua"
   }
}
