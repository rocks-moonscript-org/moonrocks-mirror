package = "lua-resty-nghttp2"
version = "1.0.0-0"
source = {
    url = "git+https://github.com/fesily/lua-resty-nghttp2.git",
}
description = {
    homepage = "https://github.com/fesily/lua-resty-nghttp2",
    license = "MIT"
}
dependencies = {
    "luajit-ffi-loader = 1.1.0-0",
}
build = {
    type = "cmake",
    variables = {
        CMAKE_BUILD_TYPE = "RelWithDebInfo",
        CMAKE_INSTALL_PREFIX = "$(PREFIX)",
        CMAKE_INSTALL_LOCAL_ONLY = "ON",
        LUA_PATH = "$(LUADIR)",
        LUA_CPATH = "$(LIBDIR)",
    },
}
