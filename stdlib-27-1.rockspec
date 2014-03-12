package="stdlib"
version="27-1"
source = {
  url = "https://github.com/downloads/rrthomas/lua-stdlib/stdlib-27.zip",
  md5 = "46c1330960365eb4aacf1a2e9dd6f845",
  dir = "stdlib-27"
}
description = {
  summary = "General Lua libraries",
  detailed = [[
      stdlib is a library of modules for common programming tasks,
      including list, table and functional operations, regexps, objects,
      pickling, pretty-printing and getopt.
   ]],
  homepage = "http://github.com/rrthomas/stdlib/",
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
