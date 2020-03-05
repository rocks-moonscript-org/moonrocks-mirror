package = "gxs-auth"
version = "2.0.3-12"
source = {
   url = "git+ssh://git@bitbucket.globalx.com.au:7999/gia/gxs-auth.git",
   tag = "v2.0.3-12"
}
description = {
   homepage = "",
   license = "unlicensed"
}
dependencies = {
   "lua ~> 5.1",
   "lua-resty-http ~> 0.15"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.gxs-auth.access"] = "access.lua",
      ["kong.plugins.gxs-auth.handler"] = "handler.lua",
      ["kong.plugins.gxs-auth.schema"] = "schema.lua"
   }
}
