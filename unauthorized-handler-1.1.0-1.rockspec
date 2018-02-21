package = "unauthorized-handler"
version = "1.1.0-1"
source = {
   url = "git+ssh://git@stash.globalx.com.au:7999/GIA/unauthorized-handler.git"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.unauthorized-handler.access"] = "access.lua",
      ["kong.plugins.unauthorized-handler.handler"] = "handler.lua",
      ["kong.plugins.unauthorized-handler.schema"] = "schema.lua"
   }
}
