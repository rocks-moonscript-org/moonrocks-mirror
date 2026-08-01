package = "flux-3-ai"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/flux_3_ai_luarocks/flux-3-ai-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Flux 3 AI image and video generator site metadata.",
   detailed = [[
Minimal metadata package for the Flux 3 AI image and video generator website.
   ]],
   homepage = "https://flux3-ai.com/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["flux_3_ai"] = "flux_3_ai.lua"
   }
}
