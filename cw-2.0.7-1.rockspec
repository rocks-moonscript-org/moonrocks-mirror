package = "cw"
description = {
  summary = "Colorer for command-line programs",
  detailed = "cw is a colorer for command-line programs.  It is designed to simulate\
      the environment of the commands being executed, so that when you type\
      'du', 'df', 'ping', etc. in your shell the output is automatically\
      colored according to a definition script.  You can easily change\
      or add new scripts, and change the colors used.\
     ",
  license = "GPL",
  homepage = "http://github.com/rrthomas/cw/",
}
version = "2.0.7-1"
build = {
  copy_directories = {
  },
  type = "make",
  variables = {
    prefix = "$(PREFIX)",
    LUA = "$(LUA)",
  },
}
dependencies = {
  "lua >= 5.2",
  "stdlib >= 41.2",
  "luaposix >= 33.3.1",
  "ansicolors >= 1.0.2",
  "ldoc",
}
source = {
  url = "git://github.com/rrthomas/cw.git",
  branch = "v2.0.7",
}
