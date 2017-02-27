package = "hfun"
version = "master-2"
source = {
   url = "git://github.com/HeinrichHartmann/luahfun.git",
   branch = "master"
}
description = {
   summary = "Fork of https://luafun.github.io/",
   license = "MIT/X11",
}
dependencies = {
    "lua"
}
build = {
    type = "builtin",
    modules = {
        hfun = "hfun.lua",
    },
}
