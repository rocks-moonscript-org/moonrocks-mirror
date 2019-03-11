build = {
  copy_directories = {
  },
  variables = {
    prefix = "$(PREFIX)",
    LUA = "$(LUA)",
  },
  type = "make",
}
package = "cw"
description = {
  detailed = "cw is a colorer for command-line programs.  It is designed to simulate\
      the environment of the commands being executed, so that when you type\
      'du', 'df', 'ping', etc. in your shell the output is automatically\
      colored according to a definition script.  You can easily change\
      or add new scripts, and change the colors used.\
     ",
  homepage = "http://github.com/rrthomas/cw/",
  summary = "Colorer for command-line programs",
  license = "GPL",
}
source = {
  url = "git://github.com/rrthomas/cw.git",
  branch = "v2.0.6",
}
dependencies = {
  "lua >= 5.2, < 5.4",
  "stdlib ~> 41.2",
  "luaposix >= 33.3.1, < 33.4",
  "ansicolors >= 1.0.2",
  "ldoc",
}
version = "2.0.6-1"
