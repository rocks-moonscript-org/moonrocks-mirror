package = "luapng"
version = "1.1-1"
source = {
  url = "git+https://github.com/zeykatecool/luaPNG",
  md5 = ""
}
description = {
  summary = "Blazingly fast PNG encoder for LuaJIT (FFI) with fallback pure Lua version",
  detailed = [[
    Provides two modules:
    - ffipng.lua: Fast PNG encoder using LuaJIT FFI.
    - png.lua: DEPRECATED Pure Lua PNG encoder (bit dependency only). DEPRECATED
  ]],
  homepage = "https://github.com/zeykatecool/luaPNG",
  license = "MIT"
}
build = {
  type = "builtin",
 modules = {
    ["luaPNG.init"] = "init.lua",
    ["luaPNG.geometry"] = "geometry.lua",
    ["luaPNG.ffipng"] = "ffipng.lua",
    ["luaPNG.png"] = "png.lua",
  }
}
dependencies = {
  "lua >= 5.1",
  "bit32"
}

