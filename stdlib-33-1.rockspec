description = {
  detailed = "    stdlib is a library of modules for common programming tasks,\
    including list, table and functional operations, regexps, objects,\
    pickling, pretty-printing and getopt.\
 ",
  homepage = "http://github.com/rrthomas/lua-stdlib/",
  license = "MIT/X11",
  summary = "General Lua libraries",
}
version = "33-1"
build = {
  copy_directories = {
  },
  install_command = "make install",
  type = "command",
  build_command = "LUA=$(LUA) CPPFLAGS=-I$(LUA_INCDIR) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
}
source = {
  branch = "release-v33",
  url = "git://github.com/rrthomas/lua-stdlib.git",
}
dependencies = {
  "lua >= 5.1",
}
package = "stdlib"
