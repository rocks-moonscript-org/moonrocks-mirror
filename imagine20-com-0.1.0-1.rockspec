package = "imagine20-com"
version = "0.1.0-1"
source = {
   url = "file:///tmp/imagine20-com-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Imagine 2.0 AI video generator site metadata.",
   detailed = [[
Minimal metadata package for the Imagine 2.0 website.
   ]],
   homepage = "https://www.imagine20.com",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["imagine20_com"] = "imagine20_com.lua"
   }
}
