package = "z-image-ai-app"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/z_image_ai_app_luarocks/z-image-ai-app-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Z Image AI platform site metadata.",
   detailed = [[
Minimal metadata package for the Z Image AI platform website.
   ]],
   homepage = "https://z-image-ai.app",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["z_image_ai_app"] = "z_image_ai_app.lua"
   }
}
