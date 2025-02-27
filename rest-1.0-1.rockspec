package = "rest"
version = "1.0-1"
source = {
   url = "git+https://git@github.com/MrSyabro/rest.git",
   branch = "master",
}
description = {
   summary = "Simple REST API constructor",
   homepage = "https://github.com/MrSyabro/rest",
   license = "MIT/X11",
   maintainer = "MrSyabro",
}
dependencies = {
   "lua >= 5.2",
   "dkjson",
   "luasocket",
}
build = {
   type = "builtin",
   modules = {
      rest = "rest.lua"
   },
}