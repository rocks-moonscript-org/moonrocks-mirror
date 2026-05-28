package = "copilot3d-org"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/luarocks/copilot3d_org_luarocks/copilot3d-org-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Copilot 3D AI 3D generator metadata.",
   detailed = [[
Minimal metadata package for the Copilot 3D AI 3D model generator website.
   ]],
   homepage = "https://www.copilot3d.org",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["copilot3d_org"] = "copilot3d_org.lua"
   }
}
