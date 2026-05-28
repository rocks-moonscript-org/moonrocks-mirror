package = "ray3-ai-app"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/ray3_ai_app_luarocks/ray3-ai-app-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Ray3 AI platform site metadata.",
   detailed = [[
Minimal metadata package for the Ray3 AI platform website.
   ]],
   homepage = "https://www.ray3-ai.app",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ray3_ai_app"] = "ray3_ai_app.lua"
   }
}
