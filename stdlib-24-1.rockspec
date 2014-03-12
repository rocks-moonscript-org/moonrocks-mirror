package="stdlib"
version="24-1"
source = {
 url = "http://luaforge.net/frs/download.php/4847/lua-stdlib-24.zip",
 md5 = "f768ac3b793e8498e20906d19bf2ef48",
 dir = "lua-stdlib-24"
}
description = {
 summary = "General Lua libraries",
 detailed = [[
     stdlib is a library of modules for common programming tasks,
     including list, table and functional operations, regexps, objects,
     pickling, pretty-printing and getopt.
  ]],
 homepage = "http://luaforge.net/projects/stdlib/",
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
