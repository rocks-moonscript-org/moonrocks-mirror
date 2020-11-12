package = "loglua"
version = "0.1-1"
source = {
   url    = "git://github.com/tinyRatP/loglua",
   tag    = "v0.1-1",
   branch = "master"
}
description = {
   summary    = "Just a log for lua.",
   maintainer = "qiaohao.peng@outlook.com",
   detailed   = "You can use it to log something.",
   homepage   = "https://github.com/tinyratp/log.lua",
   license    = "MIT"
}
build = {
   type = "builtin",
   modules = {
      log = "log.lua"
   }
}
