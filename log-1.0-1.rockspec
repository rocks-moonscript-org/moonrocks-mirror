package = "log"
version = "1.0-1"
source = {
   url = "git://github.com/mistrza/lua-log"
}
description = {
   summary = "Log module for lua",
   homepage = "http://github.com/mistrza/lua-log",
   license = "MIT"
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