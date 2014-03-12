package = "luaposix"
source = {
  url = "git://github.com/luaposix/luaposix.git",
  branch = "release-v5.1.25",
}
build = {
  type = "command",
  build_command = "LUA=$(LUA) LUA_INCLUDE=-I$(LUA_INCDIR) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
  copy_directories = {
  },
  install_command = "make install",
}
dependencies = {
  "lua >= 5.1",
  "luabitop >= 1.0.2",
}
description = {
  license = "MIT/X11",
  summary = "Lua bindings for POSIX (including curses)",
  detailed = "      A library binding various POSIX APIs, including curses.\
      POSIX is the IEEE Portable Operating System Interface standard.\
      luaposix is based on lposix and lcurses.\
     ",
  homepage = "http://github.com/luaposix/luaposix/",
}
version = "5.1.25-1"
