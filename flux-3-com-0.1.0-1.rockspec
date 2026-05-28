package = "flux-3-com"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/luarocks/flux_3_com_luarocks/flux-3-com-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Flux 3 AI image generator platform site metadata.",
   detailed = [[
Minimal metadata package for the Flux 3 AI image generator platform website.
   ]],
   homepage = "https://www.flux-3.com",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["flux_3_com"] = "flux_3_com.lua"
   }
}
