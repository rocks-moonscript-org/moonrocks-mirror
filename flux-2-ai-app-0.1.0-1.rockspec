package = "flux-2-ai-app"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/flux_2_ai_app_luarocks/flux-2-ai-app-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Flux 2 AI platform site metadata.",
   detailed = [[
Minimal metadata package for the Flux 2 AI platform website.
   ]],
   homepage = "https://www.flux-2-ai.app",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["flux_2_ai_app"] = "flux_2_ai_app.lua"
   }
}
