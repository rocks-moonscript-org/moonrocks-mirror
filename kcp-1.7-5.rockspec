package = "kcp"
version = "1.7-5"
source = {
   url = "git://github.com/chensoft/lua-kcp",
   tag = "v1.7-5"
}
description = {
   summary = "Lua bindings for KCP",
   detailed = "",
   homepage = "https://github.com/chensoft/lua-kcp",
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