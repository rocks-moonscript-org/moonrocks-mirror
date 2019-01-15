package = "fsoutcall"
version = "1.0.1-4"
source = {
   url = "git://192.168.20.71:82/zhaozhenhua/fscallout.git",
   branch = "master"
}
description = {
   summary = "call out from freeswitch.",
   detailed = [[
      This module should be called from freeswitch for call out 
   ]],
   homepage = "https://luarocks.org",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["fsoutcall"] = "fsoutcall.lua"
   }
}
