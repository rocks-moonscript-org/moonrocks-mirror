package = "geoip2"
version = "1.0.0-4"
source = {
   url = "git://github.com/chensoft/lua-geoip2",
   branch = "v1.0.0"
}
description = {
   summary = "Lua bindings for MaxMind GeoIP2 library",
   detailed = "",
   homepage = "https://github.com/chensoft/lua-geoip2",
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