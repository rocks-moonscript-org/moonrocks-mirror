package = "arrr"
version = "2.0.0-1"
source = {
   url = "git+https://github.com/darkwiiplayer/arrr",
   tag = "v2.0.0"
}
description = {
   summary = "A minimalistic commandline argument parser for Lua",
   homepage = "https://github.com/darkwiiplayer/arrr",
   license = "Public Domain"
}
build = {
   type = "builtin",
   modules = {
      arrr = "arrr/init.lua"
   }
}
