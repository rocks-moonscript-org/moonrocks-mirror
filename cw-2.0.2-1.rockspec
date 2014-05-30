package = "cw"
dependencies = {
  "lua >= 5.2",
  "stdlib >= 40",
  "luaposix >= 5.1.28",
  "ansicolors >= 1.0.2",
  "ldoc",
}
source = {
  url = "git://github.com/rrthomas/cw.git",
  branch = "v2.0.2",
}
description = {
  homepage = "http://github.com/rrthomas/cw/",
  summary = "Colorer for command-line programs",
  license = "GPL",
  detailed = "cw is a colorer for command-line programs.  It is designed to simulate\
      the environment of the commands being executed, so that when you type\
      'du', 'df', 'ping', etc. in your shell the output is automatically\
      colored according to a definition script.  You can easily change\
      or add new scripts, and change the colors used.\
     ",
}
build = {
  copy_directories = {
  },
  install_command = "make install",
  build_command = "LUA=$(LUA) autoreconf -i && ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
  type = "command",
}
version = "2.0.2-1"
