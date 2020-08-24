package = "luarunner"
version = "1.0-2"
source = {
   url = "git://github.com/little512/luarunner",
   tag = "v1.0-2"
}
description = {
   summary = "a simple script for running snippits of lua code";
   detailed = [[
      run luarunner to open your editor (as defined 
      by $EDITOR), edit a simple lua script, and exit
      to run the script, simple as that.
   ]];
   homepage = "https://github.com/little512/luarunner",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4";
   "argparse >= 0.7.1-1"
}
build = {
   type = "builtin",
   modules = {},
   install = {
      bin = {
         luarunner = "src/bin/luarunner"
      }
   }
}
