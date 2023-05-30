package = "protomixin"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/DarkWiiPlayer/protomixin.git",
   tag = "v1.0.0"
}
description = {
   homepage = "https://github.com/DarkWiiPlayer/protomixin",
   license = "Unlicense"
}
build = {
   type = "builtin",
   modules = {
      protomixin = "protomixin.lua"
   }
}
