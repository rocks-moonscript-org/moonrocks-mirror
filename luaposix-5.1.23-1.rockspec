package="luaposix"
version="5.1.23-1"
source = {
  url = "https://github.com/downloads/luaposix/luaposix/luaposix-5.1.23.tar.gz",
  md5 = "ebe7d335741ca736e003a6844a0fbf92",
  dir = "luaposix-5.1.23"
}
description = {
  summary = "Lua bindings for POSIX (including curses)",
  detailed = [[
      A library binding various POSIX APIs, including curses.
      POSIX is the IEEE Portable Operating System Interface standard.
      luaposix is based on lposix and lcurses.
   ]],
  homepage = "http://github.com/luaposix/luaposix/",
  license = "MIT/X11"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "command",
  build_command = "LUA=$(LUA) CPPFLAGS=-I$(LUA_INCDIR) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
  install_command = "make install",
  copy_directories = {}
}
