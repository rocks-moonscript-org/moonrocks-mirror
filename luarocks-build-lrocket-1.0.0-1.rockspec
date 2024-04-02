package = "luarocks-build-lrocket"
version = "1.0.0-1"
source = {
   url = "https://codeberg.org/lrocket/luarocks-build-lrocket/archive/v1.0.0.zip",
   dir = "luarocks-build-lrocket"
}
description = {
   homepage = "https://codeberg.org/lrocket/luarocks-build-lrocket",
   license = "MIT"
}
dependencies = {
   "luarocks-build-lr-hooks"
}
build = {
   type = "lr-hooks",
   modules = {
      ["luarocks.build.lrocket"] = "luarocks/build/lrocket.lua",
      ["luarocks.hooks.50-lrocket-build"] = "luarocks/hooks/hook-build.lua"
   }
}
