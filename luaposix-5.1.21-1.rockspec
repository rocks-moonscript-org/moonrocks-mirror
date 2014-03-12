package="luaposix"
version="5.1.21-1"
source = {
  url = "https://github.com/downloads/luaposix/luaposix/luaposix-5.1.21.tar.gz",
  md5 = "7bc06747199f6bd2994ed5a7b2bdf089",
  dir = "luaposix-5.1.21"
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
  build_command = "LUA=$(LUA) CPPFLAGS=-I$(LUA_INCDIR) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR)",
  install_command = "make install"
}
