package="luaposix"
version="5.1.12-1"
source = {
 url = "http://luaforge.net/frs/download.php/4844/luaposix-5.1.12.tar.gz",
 md5 = "fcead5aa7d78b7d2c578e55177524aaa",
 dir = "luaposix-5.1.12"
}
description = {
 summary = "A POSIX library (including curses) for Lua.",
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
 build_command = "LUA=$(LUA) CPPFLAGS=-I$(LUA_INCDIR) ./configure --prefix=$(PREFIX)",
 install_command = "make install lualibdir=$(LIBDIR) luadatadir=$(LUADIR) LDFLAGS=-avoid-version"
}
