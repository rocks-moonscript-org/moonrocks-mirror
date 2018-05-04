package = "loadconf"
version = "0.3.4-1"
source = {
   url = "git://github.com/Alloyed/loadconf",
   tag = "v0.3.4"
}
description = {
   homepage = "https://github.com/Alloyed/loadconf",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      loadconf = "loadconf.lua"
   }
}
