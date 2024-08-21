package = "noise"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/zeykatecool/noiselua",
}
description = {
   summary = "Noise functions for Lua with Perlin noise.",
   detailed = "This module provides various noise functions like Perlin noise.",
   license = "MIT",
   homepage = "https://github.com/zeykatecool/noiselua",
}
dependencies = {
   "lua >= 5.1",
   "bit32", --You can use 'bit' for LuaJIT or 'bit32' for Lua 5.1
}
build = {
   type = "builtin",
   modules = {
        noise = "noise.lua",
        perlin = "perlin.lua",
        pngencoder = "pngencoder.lua"
   }
}