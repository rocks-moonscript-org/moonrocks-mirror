package = "happyhorse20-com"
version = "0.1.0-1"
source = {
   url = "file:///tmp/happyhorse20_com_luarocks/happyhorse20-com-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for HappyHorse AI video generator site metadata.",
   detailed = [[
Minimal metadata package for the HappyHorse AI video generator website.
   ]],
   homepage = "https://www.happyhorse20.com",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["happyhorse20_com"] = "happyhorse20_com.lua"
   }
}
