package = "luarocks-build-builtin-with-command"
version = "0.1.0-1"
source = {
   url = "https://codeberg.org/leso-kn/luarocks-build-builtin-with-command/archive/v0.1.0.zip",
   dir = "luarocks-build-builtin-with-command"
}
description = {
   homepage = "https://codeberg.org/leso-kn/luarocks-build-builtin-with-command",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["luarocks.build.builtin-with-command"] = "luarocks/build/builtin-with-command.lua"
   }
}
