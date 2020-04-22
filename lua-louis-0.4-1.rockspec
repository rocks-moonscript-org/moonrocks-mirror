package = "lua-louis"
version = "0.4-1"
source = {
   url = "git://github.com/liblouis/lua-louis",
   tag = "v0.4"
}
description = {
   summary = "Bindings for liblouis, the Braille translator",
   homepage = "http://github.com/liblouis/lua-louis/",
   license = "LGPLv3+"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "command",
   copy_directories = {
      "doc",
      "examples"
   },
   build_command = "./autogen.sh && LUA=$(LUA) CPPFLAGS=-I$(LUA_INCDIR) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
   install_command = "make install"
}
