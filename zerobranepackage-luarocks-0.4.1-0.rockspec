package = "ZeroBranePackage-LuaRocks"
version = "0.4.1-0"

source = {
 url = "git://github.com/Propagram/ZeroBranePackage-LuaRocks.git",
 branch = "main"
}

description = {
 summary = "LuaRocks ZeroBrane Package",
 detailed = [[
Search, install, and manage ZeroBrane Packages and Modules from LuaRocks directly in your favorite IDE!
]],
 homepage = "https://github.com/Propagram/ZeroBranePackage-LuaRocks",
 maintainer = "Evandro C.",
 license = "MIT"
}

dependencies = {
  "lua == 5.1"
}

build = {
 type = "builtin",
 modules = {
  ["LuaRocks"] = "LuaRocks.lua",
 }
}
