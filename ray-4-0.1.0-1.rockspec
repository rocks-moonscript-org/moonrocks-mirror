package = "ray-4"
version = "0.1.0-1"
source = {
   url = "file:///tmp/ray-4-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Ray 4 AI image generator metadata.",
   detailed = [[
Minimal metadata package for the Ray 4 AI image generator website.
   ]],
   homepage = "https://www.ray4ai.com/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ray_4"] = "ray_4.lua"
   }
}
