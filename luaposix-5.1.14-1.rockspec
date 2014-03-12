package="luaposix"
version="5.1.14-1"
source = {
  url = "http://luaforge.net/frs/download.php/4848/luaposix-5.1.14.tar.gz",
  md5 = "a06af926a87e8d5e7c5b99304e0371f1",
  dir = "luaposix-5.1.14"
}
description = {
  summary = "Lua bindings for POSIX (including curses)",
  detailed = [[
      A library binding various POSIX APIs, including curses.
      POSIX is the IEEE Portable Operating System Interface standard.
      luaposix is based on lposix and lcurses.
   ]],
  homepage = "http://luaforge.net/projects/luaposix/",
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
