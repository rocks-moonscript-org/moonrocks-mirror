package = "loadconf"
version = "0.2.1-1"
source = {
   url = "git://github.com/Alloyed/loadconf",
   tag = "v0.2.1"
}
description = {
   homepage = "https://github.com/Alloyed/loadconf",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      loadconf = "loadconf.lua"
   }
}
