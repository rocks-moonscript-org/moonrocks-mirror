package = "vector"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/zeykatecool/vectorlua",
}
description = {
   summary = "Vector2 and Vector3 library for Lua.",
   detailed = "This module implements vector2 and vector3 to Lua.Also can draw Vector2 to PNGs.",
   license = "MIT",
   homepage = "https://github.com/zeykatecool/vectorlua",
}
dependencies = {
   "lua >= 5.1",
   "bit32", --You can use 'bit' for LuaJIT or 'bit32' for Lua 5.1
}
build = {
   type = "builtin",
   modules = {
        vector = "vector.lua",
        pngencoder = "pngencoder.lua"
   }
}