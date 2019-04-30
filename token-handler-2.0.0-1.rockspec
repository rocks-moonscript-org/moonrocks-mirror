package = "token-handler"
version = "2.0.0-1"
source = {
   url = "git+ssh://git@stash.globalx.com.au:7999/GIA/token-handler.git"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua ~> 5.1",
   "lua-resty-cookie ~> 0.1",
   "lua-resty-http ~> 0.08"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.token-handler.access"] = "access.lua",
      ["kong.plugins.token-handler.handler"] = "handler.lua",
      ["kong.plugins.token-handler.schema"] = "schema.lua"
   }
}
