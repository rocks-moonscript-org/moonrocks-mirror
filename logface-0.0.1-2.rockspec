package = "logface"
version = "0.0.1-2"
source = {
   url = "git://github.com/azdle/logface.git",
   tag = "0.0.1"
}
description = {
   summary = "A generic logging interface for lua",
   homepage = "https://github.com/azdle/logface",
   license = "CC0"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      log = "log.lua",
   }
}
