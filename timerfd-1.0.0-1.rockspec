package = "timerfd"
version = "1.0.0-1"
source = {
   url = "git://github.com/chensoft/lua-timerfd",
   tag = "v1.0.0"
}
description = {
   summary = "Lua bindings for Linux timerfd",
   detailed = "",
   homepage = "https://github.com/chensoft/lua-timerfd",
   license = "MIT"
}
supported_platforms = {"linux"}
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