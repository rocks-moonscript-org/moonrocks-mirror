package = "luv"
version = "1.4.2-1"

description = {
  summary = "Bare libuv bindings for lua",
  detailed = [[
libuv bindings for luajit and lua 5.1/5.2.

This library makes libuv available to lua scripts. It was made for the luvit project but should usable from nearly any lua project.
  ]],
  homepage = "https://github.com/luvit/luv",
  license = "Apache 2.0"
}

dependencies = {
  "lua >= 5.1"
}

-- cmake -Bbuild -H. -DBUILD_SHARED_LIBS=ON
-- cmake --build build --target install --config Release
build = {
  type = 'cmake',
  variables = {
    LUV_INSTALL_PREFIX = "$(PREFIX)",
    LUV_LUA_LIBDIR = "$(LUA_LIBDIR)",
    LUV_LUA_INCDIR = "$(LUA_INCDIR)",
    BUILD_SHARED_LIBS="ON",
  }
}
