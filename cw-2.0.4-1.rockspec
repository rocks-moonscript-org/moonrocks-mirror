package = "cw"
source = {
  branch = "v2.0.4",
  url = "git://github.com/rrthomas/cw.git",
}
version = "2.0.4-1"
build = {
  type = "command",
  copy_directories = {
  },
  install_command = "make install",
  build_command = "LUA=$(LUA) autoreconf -i && ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
}
dependencies = {
  "lua >= 5.2",
  "stdlib >= 41.2.0",
  "luaposix >= 33.3.1",
  "ansicolors >= 1.0.2",
  "ldoc",
}
description = {
  license = "GPL",
  summary = "Colorer for command-line programs",
  homepage = "http://github.com/rrthomas/cw/",
  detailed = "cw is a colorer for command-line programs.  It is designed to simulate\
      the environment of the commands being executed, so that when you type\
      'du', 'df', 'ping', etc. in your shell the output is automatically\
      colored according to a definition script.  You can easily change\
      or add new scripts, and change the colors used.\
     ",
}
