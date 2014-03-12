package="stdlib"
version="25-1"
source = {
  url = "http://luaforge.net/frs/download.php/4849/stdlib-25.zip",
  md5 = "4d849d7a0ed3a6fa0af5aa276ced3d3e",
  dir = "stdlib-25"
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
