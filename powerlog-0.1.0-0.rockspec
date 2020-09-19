package = "powerlog"
version = "0.1.0-0"
source = {
   url = "git+https://github.com/thislight/powerlog.git",
   tag = "v0.1"
}
description = {
   homepage = "https://github.com/thislight/powerlog",
   license = "GPLv3"
}
dependencies = {
   "lua >=5.3, <=5.4"
}
build = {
   type = "builtin",
   modules = {
      powerlog = "powerlog.lua",
      ["powerlog.loglimit"] = "powerlog/loglimit.lua",
      ["powerlog.stdout"] = "powerlog/stdout.lua",
      ["powerlog.topstring"] = "powerlog/topstring.lua"
   }
}
