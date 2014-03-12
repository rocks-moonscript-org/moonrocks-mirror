package = "cw"
version = "2.0.1-2"
source = {
   url = "git://github.com/rrthomas/cw.git",
   branch = "release-v2.0.1"
}
description = {
   summary = "Colorer for command-line programs",
   detailed = [[
cw is a colorer for command-line programs.  It is designed to simulate
      the environment of the commands being executed, so that when you type
      'du', 'df', 'ping', etc. in your shell the output is automatically
      colored according to a definition script.  You can easily change
      or add new scripts, and change the colors used.
     ]],
   homepage = "http://github.com/rrthomas/cw/",
   license = "GPL"
}
dependencies = {
   "lua >= 5.1", "stdlib >= 34, < 35", "luaposix >= 5.1.28", "ansicolors >= 1.0.2"
}
build = {
   type = "command",
   copy_directories = {},
   build_command = "LUA=$(LUA) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
   install_command = "make install"
}
