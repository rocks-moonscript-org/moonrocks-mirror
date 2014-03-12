package="zee"
version="0.7-2"
source = {
  url = "https://github.com/downloads/rrthomas/zee/zee-0.7.tar.gz",
  md5 = "ed0980c73ef57eaa44e9dd53368eebf9",
  dir = "zee-0.7"
}
description = {
  summary = "Experimental lightweight editor",
  detailed = [[
      Zee is a lightweight editor. Zee is aimed at small footprint
      systems and quick editing sessions (it starts up and shuts down
      instantly).
   ]],
  homepage = "https://github.com/rrthomas/zee/",
  license = "GPLv3+"
}
dependencies = {
  "lua == 5.2",
  "stdlib >= 28, < 35",
  "luaposix >= 5.1.23",
  "lrexlib-gnu >= 2.7.1",
  "alien >= 0.7.0",
}
build = {
  type = "command",
  build_command = "LUA=$(LUA) CPPFLAGS=-I$(LUA_INCDIR) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
  install_command = "make install",
  copy_directories = {}
}
