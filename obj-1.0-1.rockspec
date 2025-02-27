package = "obj"
version = "1.0-1"
source = {
   url = "git+https://git@github.com/MrSyabro/utils.git",
   branch = "master",
}
description = {
   homepage = "https://github.com/MrSyabro/utils",
   license = "MIT/X11",
   maintainer = "MrSyabro",
}
dependencies = {
   "lua >= 5.2",
}
build = {
   type = "builtin",
   modules = {
      obj = "lua/obj.lua"
   },
}