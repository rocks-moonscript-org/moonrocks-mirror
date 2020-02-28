package = "gxid-bearer"
version = "4.1.3-72"
source = {
   url = "git+ssh://git@bitbucket.globalx.com.au:7999/gia/gxid-bearer.git",
   tag = "v4.1.3-72"
}
description = {
   homepage = "",
   license = "unlicensed"
}
dependencies = {
   "lua ~> 5.1",
   "lua-resty-cookie ~> 0.1",
   "lua-resty-http ~> 0.15",
   "lua-resty-jwt ~> 0.2"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.gxid-bearer.access"] = "access.lua",
      ["kong.plugins.gxid-bearer.handler"] = "handler.lua",
      ["kong.plugins.gxid-bearer.schema"] = "schema.lua"
   }
}
