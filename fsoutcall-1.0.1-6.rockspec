package = "fsoutcall"
version = "1.0.1-6"
source = {
   url = "git://gitee.com/voipke/fsoutcall.git",
   branch = "master",
   tag = "1.0.1-6"
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
