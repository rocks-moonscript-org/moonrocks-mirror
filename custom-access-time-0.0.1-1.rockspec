package = "custom-access-time"
version = "0.0.1-1"
source = {
   url = "git+https://github.com/Ethansuengx/lua_plugin.git"
}
description = {
   homepage = "https://github.com/Ethansuengx/lua_plugin",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      handler = "handler.lua",
      schema = "schema.lua"
   }
}
