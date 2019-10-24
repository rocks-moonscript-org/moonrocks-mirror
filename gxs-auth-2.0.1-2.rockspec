package = "gxs-auth"
version = "2.0.1-2"
source = {
   url = "git+ssh://git@bitbucket.globalx.com.au:7999/GIA/gxs-auth.git"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua ~> 5.1",
   "lua-resty-http ~> 0.08"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.gxs-auth.access"] = "access.lua",
      ["kong.plugins.gxs-auth.handler"] = "handler.lua",
      ["kong.plugins.gxs-auth.schema"] = "schema.lua"
   }
}
