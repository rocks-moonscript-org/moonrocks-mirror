package = "lua-uiohook"
version = "1.2-1"
source = {
   url = "git://github.com/ThatOneMendes/lua-uiohook.git",
   tag = "v1.2-1"
}
description = {
   summary = "Lua bindings for libuiohook",
   detailed  = [[
      A module that adds bindings to libuiohook, a cross-platform keyboard and mouse hooking library.
   ]],
   license = "GPLv3"
}
dependencies = {
   "lua >= 5.3"
}
rockspec_format = "3.0"

build = {
   type = "cmake",
   copy_directories = {"docs"},
   variables = {
      CMAKE_BUILD_TYPE = "Release",
      CMAKE_INSTALL_PREFIX = "$(PREFIX)",
      LUA_VERSION = "$(LUA_VERSION)"
   },
   install = {
      lua = {
         ["lua-uiohook.init"] = "src/lua/init.lua",
         ["lua-uiohook.constants"] = "src/lua/constants.lua"
      }
   }
}
