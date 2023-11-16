package = "mq-biggerlib"
version = "0.1.0-1"
source = {
   url = "git+ssh://git@github.com:PrestigeCodeWorldwide/prestige_biggerlib.git",
   branch = "master"
}
description = {
   summary = "MQ Library",
   detailed = "This package is for educational purposes ...",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1, < 5.5"
}

build = {
   type = "builtin",
   modules = {
      init = "init.lua"
   }
}
