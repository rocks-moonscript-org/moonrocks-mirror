package = "fsoutcall"
version = "1.0.1-8"
source = {
   url = "http://60.205.170.164/fsoutcall-1.0.1-8.tar.gz",
   file = "fsoutcall-1.0.1-8.tar.gz"
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
