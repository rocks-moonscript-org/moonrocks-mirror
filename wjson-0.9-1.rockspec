package = "wjson"
version = "0.9-1"
source = {
   url = "git+https://github.com/winterstream/wjson.git"
}
description = {
   summary = "A fast and conformant JSON library for Lua",
   detailed = [[
      wjson is a minimalist JSON encoder/decoder for Lua. 
      It supports Lua 5.2+, LuaJIT, and provides a simple API for conversion.
   ]],
   homepage = "https://github.com/winterstream/wjson",
   license = "MIT"
}
dependencies = {
   "lua >= 5.2"
}
build = {
   type = "builtin",
   modules = {
      wjson = "src/wjson.lua"
   }
}
