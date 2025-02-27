package = "unauthorized-handler"
version = "2.1.1-8"
source = {
   url = "git+ssh://git@bitbucket.globalx.com.au:7999/gia/unauthorized-handler.git",
   tag = "v2.1.1-redirect.8"
}
description = {
   homepage = "",
   license = "unlicensed"
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
