description = {
  detailed = "      A library binding various POSIX APIs, including curses.\
      POSIX is the IEEE Portable Operating System Interface standard.\
      luaposix is based on lposix and lcurses.\
     ",
  license = "MIT/X11",
  homepage = "http://github.com/luaposix/luaposix/",
  summary = "Lua bindings for POSIX (including curses)",
}
version = "5.1.28-1"
package = "luaposix"
source = {
  url = "git://github.com/luaposix/luaposix.git",
  branch = "release-v5.1.28",
}
dependencies = {
  "lua >= 5.1",
  "luabitop >= 1.0.2",
}
build = {
  copy_directories = {
  },
  build_command = "LUA=$(LUA) LUA_INCLUDE=-I$(LUA_INCDIR) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
  type = "command",
  install_command = "make install",
}
