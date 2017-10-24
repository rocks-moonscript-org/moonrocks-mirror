package = "flvk"
version = "1.3-4"
source = {
  url = "git://github.com/iZarif/flvk",
  tag = "flvk-1.3"
}
description = {
  summary = "Lua library for integration with REST API of vk.com.",
  detailed = [[
Lua library for integration with REST API of vk.com. Implementation for 5.68 API version.

Functional style fork of lvk.

Compatible with Lua 5.1, Lua 5.2, Lua 5.3, LuaJIT, LuaJIT 2.
]],
  homepage = "https://github.com/iZarif/flvk",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1", "lua-cjson", "luasec"
}
build = {
  type = "builtin",
  modules = {
    flvk = "flvk.lua"
  }
}
