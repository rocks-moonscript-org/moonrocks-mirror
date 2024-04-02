package = "luarocks-build-lrocket-next"
version = "0.1.0-0"
source = {
   url = "https://codeberg.org/leso-kn/lrocket-next/archive/v0.1.0.zip",
   dir = "lrocket-next"
}
description = {
   homepage = "https://codeberg.org/leso-kn/lrocket-next",
   license = "MIT"
}
dependencies = {
   "luarocks-build-lrocket ~> 1",
   "lrc ~> 1"
}
build = {
   type = "builtin",
   modules = {
      ["lrocket-next.attac-loader"] = "lrocket-next/attac-loader.lua",
      ["lrocket-next.init"] = "lrocket-next/init.lua",
      ["luarocks.build.lrocket-next"] = "luarocks/build/lrocket-next.lua"
   }
}
