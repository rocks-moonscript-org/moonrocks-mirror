version = "5.1.24-1"
package = "luaposix"
description = {
  detailed = "      A library binding various POSIX APIs, including curses.\
      POSIX is the IEEE Portable Operating System Interface standard.\
      luaposix is based on lposix and lcurses.\
     ",
  summary = "Lua bindings for POSIX (including curses)",
  homepage = "http://github.com/luaposix/luaposix/",
  license = "MIT/X11",
}
build = {
  install_command = "make install",
  type = "command",
  copy_directories = {
  },
  build_command = "LUA=$(LUA) LUA_INCLUDE=-I$(LUA_INCDIR) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
}
dependencies = {
  "lua >= 5.1",
  "luabitop >= 1.0.2",
}
source = {
  url = "git://github.com/luaposix/luaposix.git",
  branch = "release-v5.1.24",
}
