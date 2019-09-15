rockspec_format = "3.0"
package = "lua-xwiimote"
version = "0.1.1-1"
source = {
   url = "git://github.com/v1993/lua-xwiimote",
   tag = "v0.1.1"
}
description = {
   summary = "Lua bindings to XWiimote linux stack",
   homepage = "https://github.com/v1993/lua-xwiimote",
   license = "MIT/X11",
   issues_url = "https://github.com/v1993/lua-xwiimote/issues",
   labels = {
      "linux",
      "game",
      "joystick"
   }
}
supported_platforms = {
   "linux"
}
dependencies = {
   "lua >= 5.3, < 5.4"
}
build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE = "Release",
      CMAKE_INSTALL_PREFIX = "$(PREFIX)",
      LUA = "$(LUA)",
      LUA_INCDIR = "$(LUA_INCDIR)"
   }
}
