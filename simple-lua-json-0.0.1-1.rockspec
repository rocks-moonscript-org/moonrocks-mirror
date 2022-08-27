package = "simple-lua-json"
local v = "0.0.1"
version = v.."-1"

source = {
   url = "git+https://github.com/muulfz/Lua-Json.git",
   tag = "v"..v
}
description = {
   summary = "A simple json serializer for Lua.",
   detailed = [[
      An json serializer for lua.
   ]],
   homepage = "https://github.com/muulfz/Lua-Json",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, <= 5.4"
}
build = {
  type = "builtin",
  modules = {
    sonar = "json.lua",
  }
}
