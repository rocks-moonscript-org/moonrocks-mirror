package = "unauthorized-handler"
version = "2.1.2-11"
source = {
   url = "git+ssh://git@github.com/dyedurham/unauthorized-handler.git",
   tag = "v2.1.2"
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
