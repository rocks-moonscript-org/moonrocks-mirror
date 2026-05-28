package = "sam3d2-com"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/luarocks/sam3d2_com_luarocks/sam3d2-com-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Sam 3D 2.0 AI 3D generator metadata.",
   detailed = [[
Minimal metadata package for the Sam 3D 2.0 AI 3D model generator website.
   ]],
   homepage = "https://www.sam3d2.com",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["sam3d2_com"] = "sam3d2_com.lua"
   }
}
