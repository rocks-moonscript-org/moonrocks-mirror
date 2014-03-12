source = {
  url = "git://github.com/rrthomas/lua-stdlib.git",
  branch = "release-v30",
}
version = "30-1"
build = {
  type = "command",
  install_command = "make install",
  copy_directories = {
  },
  build_command = "LUA=$(LUA) LUA_INCLUDE=$(LUA_INCDIR) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
}
dependencies = {
  "lua >= 5.1",
}
description = {
  homepage = "http://github.com/rrthomas/lua-stdlib/",
  license = "MIT/X11",
  summary = "General Lua libraries",
  detailed = "    stdlib is a library of modules for common programming tasks,\
    including list, table and functional operations, regexps, objects,\
    pickling, pretty-printing and getopt.\
 ",
}
package = "stdlib"
