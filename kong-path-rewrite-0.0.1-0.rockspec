package = "kong-path-rewrite"
version = "0.0.1-0"
source = {
   url = "git://github.com/jiladahe1997/kong-path-rewrite"
}
description = {
   homepage = "https://github.com/jiladahe1997/kong-path-rewrite",
   license = "*** please specify a license ***"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
    ["kong.plugins.kong-path-rewrite.handler"] = "kong/plugins/kong-path-rewrite/handler.lua",
    ["kong.plugins.kong-path-rewrite.schema"] = "kong/plugins/kong-path-rewrite/schema.lua"
   }
}