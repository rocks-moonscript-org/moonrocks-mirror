package = "mongo"
version = "1.2.3-2"
source = {
   url = "git://github.com/chensoft/lua-mongo",
   branch = "v1.2.3"
}
description = {
   summary = "Lua bindings for mongo, forked from neoxic/lua-mongo",
   detailed = "",
   homepage = "https://github.com/chensoft/lua-mongo",
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