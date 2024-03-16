package = "luarocks-build-builtin-cmd"
version = "0.1.0-1"
source = {
   url = "https://codeberg.org/leso-kn/luarocks-build-builtin-cmd/archive/v0.1.0.tar.gz",
   dir = "luarocks-build-builtin-cmd"
}
description = {
   homepage = "https://codeberg.org/leso-kn/luarocks-build-builtin-cmd",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["luarocks.build.builtin-with-command"] = "luarocks/build/builtin-with-command.lua"
   }
}
