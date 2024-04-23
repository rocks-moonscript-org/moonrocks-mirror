build = {
  copy_directories = {
  },
  variables = {
    LUA = "$(LUA)",
    prefix = "$(PREFIX)",
  },
  type = "make",
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
dependencies = {
  "lua >= 5.2",
  "stdlib >= 41.2",
  "optparse >= 1.4",
  "luaposix >= 33.3.1",
  "ansicolors >= 1.0.2",
  "ldoc",
}
version = "2.0.9-1"
package = "cw"
source = {
  url = "git://github.com/rrthomas/cw.git",
  branch = "v2.0.9",
}
