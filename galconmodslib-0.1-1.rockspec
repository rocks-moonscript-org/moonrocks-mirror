package = "GalconModsLib"
version = "0.1-1"
source = {
   url = "git://github.com/tinnytime/GalconModsLib.git",
   tag = "0.4"
}
description = {
   summary = "A Galcon 2 modding library.",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
    ["galconmodslib"] = "Core/init.lua"
   }
}
