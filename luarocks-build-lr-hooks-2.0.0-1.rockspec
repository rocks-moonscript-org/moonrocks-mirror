package = "luarocks-build-lr-hooks"
version = "2.0.0-1"
source = {
   url = "https://codeberg.org/leso-kn/lr-hooks/archive/v2.0.0.zip",
   dir = "lr-hooks"
}
description = {
   homepage = "https://codeberg.org/leso-kn/lr-hooks",
   license = "MIT"
}
build = {
   type = "command",
   install_command = "$(LUA) install.lua \"$(LUADIR)\" \"$(LIBDIR)\""
}
