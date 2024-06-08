package = "lua-colorlog"
version = "1.0-1"
source = {
   url = "git://github.com/distressfeelings/lua-colorlog",
   tag = "master"
}
description = {
   summary = "lua-colorlog, a lua lib with the objetive of make the scripts outputs more fun and beauty!",
   detailed = [[
      lua-colorlog is a log output customizer for scripts, to make them more readlabe, 
      understandable and beautiful to see! The principal objetive is upgrade a 
      little better your script output with different variety of colors.
   ]],
   homepage = "https://github.com/distressfeelings/lua-colorlog.git",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "lunajson >= 1.2.3"
}

build = {
   type = "builtin",
   modules = {
      ['lua-colorlog'] = "src/lua-colorlog.lua"
    }
}