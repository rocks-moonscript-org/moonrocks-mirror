package = "arrr"
version = "3.0.1-1"
source = {
   url = "git+https://github.com/darkwiiplayer/arrr",
   tag = "v3.0.1"
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
