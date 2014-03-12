build = {
  build_command = "LUA=$(LUA) LUA_INCLUDE=$(LUA_INCDIR) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
  copy_directories = {
  },
  install_command = "make install",
  type = "command",
}
package = "stdlib"
dependencies = {
  "lua >= 5.1",
}
description = {
  license = "MIT/X11",
  homepage = "http://github.com/rrthomas/lua-stdlib/",
  summary = "General Lua libraries",
  detailed = "    stdlib is a library of modules for common programming tasks,\
    including list, table and functional operations, regexps, objects,\
    pickling, pretty-printing and getopt.\
 ",
}
source = {
  branch = "release-v31",
  url = "git://github.com/rrthomas/lua-stdlib.git",
}
version = "31-1"
