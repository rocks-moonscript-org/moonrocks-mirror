dependencies = {
  "lua >= 5.2",
  "stdlib >= 40",
  "luaposix >= 5.1.28",
  "ansicolors >= 1.0.2",
  "ldoc",
}
package = "cw"
build = {
  install_command = "make install",
  copy_directories = {
  },
  build_command = "LUA=$(LUA) autoreconf -i && ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
  type = "command",
}
source = {
  branch = "v2.0.3",
  url = "git://github.com/rrthomas/cw.git",
}
description = {
  detailed = "cw is a colorer for command-line programs.  It is designed to simulate\
      the environment of the commands being executed, so that when you type\
      'du', 'df', 'ping', etc. in your shell the output is automatically\
      colored according to a definition script.  You can easily change\
      or add new scripts, and change the colors used.\
     ",
  license = "GPL",
  homepage = "http://github.com/rrthomas/cw/",
  summary = "Colorer for command-line programs",
}
version = "2.0.3-1"
