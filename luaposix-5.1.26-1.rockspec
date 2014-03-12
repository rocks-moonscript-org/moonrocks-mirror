dependencies = {
  "lua >= 5.1",
  "luabitop >= 1.0.2",
}
description = {
  license = "MIT/X11",
  homepage = "http://github.com/luaposix/luaposix/",
  detailed = "      A library binding various POSIX APIs, including curses.\
      POSIX is the IEEE Portable Operating System Interface standard.\
      luaposix is based on lposix and lcurses.\
     ",
  summary = "Lua bindings for POSIX (including curses)",
}
package = "luaposix"
build = {
  build_command = "LUA=$(LUA) LUA_INCLUDE=-I$(LUA_INCDIR) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
  install_command = "make install",
  type = "command",
  copy_directories = {
  },
}
version = "5.1.26-1"
source = {
  branch = "release-v5.1.26",
  url = "git://github.com/luaposix/luaposix.git",
}
