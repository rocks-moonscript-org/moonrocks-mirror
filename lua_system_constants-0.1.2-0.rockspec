package = "lua_system_constants"
version = "0.1.2-0"
source = {
  url = "git://github.com/Mashape/lua-system-constants",
  tag = "0.1.2"
}
description = {
  summary = "System Constants",
  detailed = [[
    Lua utility library to retrieve system constants values, based on the architecture this library has been complied for.
  ]],
  homepage = "https://github.com/Mashape/lua-system-constants",
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
