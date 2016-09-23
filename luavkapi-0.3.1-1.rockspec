package = "LuaVkApi"
version = "0.3.1-1"
source = {
  url = "https://github.com/last-khajiit/luaVkApi",
  tag = "luaVkApi-0.3.1"
}
description = {
  summary = "Lua library for vk.com REST API",
  detailed = [[
luaVkApi is Lua wrapper library for REST API of vk.com. 

Implementation for 5.53 version of API.
]],
  homepage = "https://github.com/last-khajiit/luaVkApi",
  license = "WTFPL2"
}
dependencies = {
  "lua >= 5.1", "dkjson", "luasec"
}
build = {
  type = "builtin",
  modules = {
    LuaVkApi = "LuaVkApi.lua"
  }
}
