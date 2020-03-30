package = "long"
version = "2.0.0-0"
source = {
  url = "https://github.com/nubix-io/lua-long/archive/2.0.0-0.tar.gz",
  dir = "lua-long-2.0.0-0"
}
description = {
  summary = "A pure Lua class representing a 64 bit two's-complement integer value",
  detailed = [[
    A pure Lua port of long.js, for representing a 64 bit two's-complement integer value
  ]],
  homepage = "https://github.com/nubix-io/lua-long",
  maintainer = "Nubix Inc.",
  license = "Apache 2.0"
}
dependencies = {
  "bit32 <= 5.3.2-0",
  "lua >= 5.1, < 5.3"
}
build = {
  type = "builtin",
  modules = {
    ["long"] = "src/long.lua",
    ["long.bit32s"] = "src/long/bit32s.lua"
  }
}
