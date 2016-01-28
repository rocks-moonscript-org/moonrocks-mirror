package = "lcurses"
version = "9.0.0-1"
description = {
  detailed = "lcurses is a C library for Lua that wraps the curses API.",
  homepage = "http://github.com/lcurses/lcurses/",
  license = "MIT/X11",
  summary = "Lua bindings for curses",
}
source = {
  dir = "lcurses-release-v9.0.0",
  url = "http://github.com/lcurses/lcurses/archive/release-v9.0.0.zip",
}
dependencies = {
  "lua >= 5.1, < 5.4",
}
external_dependencies = nil
build = {
  build_command = "./configure LUA='$(LUA)' LUA_INCLUDE='-I$(LUA_INCDIR)' --prefix='$(PREFIX)' --libdir='$(LIBDIR)' --datadir='$(LUADIR)' --datarootdir='$(PREFIX)' && make clean all",
  copy_directories = {},
  install_command = "make install luadir='$(LUADIR)' luaexecdir='$(LIBDIR)'",
  type = "command",
}
