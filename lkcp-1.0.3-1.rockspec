package = "lkcp"
version = "1.0.3-1"
source = {
   url = "git://github.com/chensoft/lkcp",
   tag = "v1.0.3"
}
description = {
   summary = "Lua bindings for KCP, with LuaRocks & CMake support",
   detailed = "",
   homepage = "https://github.com/chensoft/lkcp",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   type = "cmake",
   variables = {
     CMAKE_BUILD_TYPE = "Release",
     CMAKE_INSTALL_PREFIX = "$(PREFIX)"
   },
}