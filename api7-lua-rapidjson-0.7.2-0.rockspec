package = "api7-lua-rapidjson"
version = "0.7.2-0"
local v = version:gsub("%-%d+$", "")
source = {
  url = "git://github.com/api7/lua-rapidjson",
  tag = "v"..v
}
description = {
  summary = "Json module based on the very fast RapidJSON.",
  detailed = "A json module for Lua 5.1/5.2/5.3 and LuaJIT based on the very fast RapidJSON. api7 fork of xpol/lua-rapidjson, built without host-specific CPU tuning so a packaged module is not tied to the machine that built it.",
  homepage = "https://github.com/api7/lua-rapidjson",
  license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
  type = "cmake",
  variables = {
    BUILD_SHARED_LIBS = "ON",
    CMAKE_INSTALL_PREFIX = "$(PREFIX)",
    LUA_INCLUDE_DIR = "$(LUA_INCDIR)",
    LUA_RAPIDJSON_VERSION = v
  },
  platforms = { windows = { variables = {
    LUA_LIBRARIES = "$(LUA_LIBDIR)/$(LUALIB)"
  }}}
}
