package = "gxid-param"
version = "1.0.0-2"
source = {
   url = "git+ssh://git@bitbucket.globalx.com.au:7999/gia/gxid-param.git",
   tag = "v1.0.0-2"
}

description = {
    summary = "GXID Param",
    detailed = "Kong plugin to forward GXID cookie as query parameter."
}

dependencies = {
   "lua ~> 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["kong.plugins.gxid-param.access"] = "access.lua",
      ["kong.plugins.gxid-param.handler"] = "handler.lua",
      ["kong.plugins.gxid-param.schema"] = "schema.lua"
   }
}
