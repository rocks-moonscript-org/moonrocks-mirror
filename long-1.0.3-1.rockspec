package = "long"
version = "1.0.3-1"
source = {
  url = "https://github.com/BixData/lua-long/archive/1.0.3-1.tar.gz",
  dir = "lua-long-1.0.3-1"
}
description = {
  summary = "A pure Lua class representing a 64 bit two's-complement integer value",
  detailed = [[
    A pure Lua port of long.js, for representing a 64 bit two's-complement integer value
  ]],
  homepage = "https://github.com/BixData/lua-long",
  maintainer = "David Rauschenbach",
  license = "Apache 2.0"
}
dependencies = {
  "bit32 <= 5.3.2-0",
  "lua >= 5.1, < 5.3",
  "middleclass <= 4.1-0"
}
build = {
  type = "builtin",
  modules = {
    ["long"] = "src/long.lua",
    ["long.bit32s"] = "src/long/bit32s.lua"
  }
}
