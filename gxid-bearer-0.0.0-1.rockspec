package = "gxid-bearer"
version = "0.0.0-1"
source = {
   url = "git+ssh://git@stash.globalx.com.au:7999/GIA/gxid-bearer.git"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua ~> 5.1",
   "lua-resty-cookie ~> 0.1",
   "lua-resty-http ~> 0.08",
   "lua-resty-jwt ~> 0.1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.gxid-bearer.access"] = "access.lua",
      ["kong.plugins.gxid-bearer.handler"] = "handler.lua",
      ["kong.plugins.gxid-bearer.schema"] = "schema.lua"
   }
}
