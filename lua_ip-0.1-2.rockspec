package = "lua_ip"
version = "0.1-2"
source = {
  url = "https://github.com/Mashape/lua-ip/archive/0.1-2.tar.gz",
  dir = "lua-ip-0.1-2"
}
description = {
  summary = "IP utils",
  detailed = [[
    Generic IP utilities
  ]],
  homepage = "https://github.com/Mashape/lua-ip",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "make",
  build_variables = {
    LUA="$(LUA)",
    CFLAGS="$(CFLAGS)",
    LIBFLAG="$(LIBFLAG)",
    LUA_LIBDIR="-L$(LUA_LIBDIR)",
    LUA_INCDIR="-I$(LUA_INCDIR)"
  },
  install_variables = {
    INST_LIBDIR = "$(LIBDIR)"
  }
}
