package = "kcp2"
version = "2.0-2"
source = {
   url = "git://github.com/antigloss/lua-kcp2",
   tag = "master"
}
description = {
   summary = "Lua bindings for KCP (Dual channel version)",
   detailed = "",
   homepage = "https://github.com/antigloss/lua-kcp2",
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