package = "seed3d-2-0"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/luarocks/seed3d_2_0_luarocks/seed3d-2-0-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Seed3d 2.0 AI 3D generator metadata.",
   detailed = [[
Minimal metadata package for the Seed3d 2.0 AI 3D model generator website.
   ]],
   homepage = "https://www.seed3d20.com",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["seed3d_2_0"] = "seed3d_2_0.lua"
   }
}
