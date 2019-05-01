package = "claims-handler"
version = "4.0.9-1"
source = {
   url = "git+ssh://git@stash.globalx.com.au:7999/gia/claims-handler.git"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua ~> 5.1",
   "lua-resty-http ~> 0.08",
   "lua-resty-jwt ~> 0.1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.claims-handler.access"] = "access.lua",
      ["kong.plugins.claims-handler.handler"] = "handler.lua",
      ["kong.plugins.claims-handler.schema"] = "schema.lua"
   }
}
