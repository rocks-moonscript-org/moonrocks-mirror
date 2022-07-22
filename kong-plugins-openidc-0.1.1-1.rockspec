rockspec_format = "3.0"
package = "kong-plugins-openidc"
version = "0.1.1-1"
source = {
   url = "git+https://github.com/murillio4/kong-openidc",
   tag = "v0.1.1"
}
description = {
   summary = "A kong plugin for Oidc token validation",
   homepage = "https://github.com/murillio4/kong-openidc",
   license = "Apache 2.0",
   maintainer = "Mattis Bratland"
}
dependencies = {
   "lua >= 5.1",
   "lua-resty-openidc ~> 1.7.5-1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.openidc.access"] = "kong/plugins/openidc/access.lua",
      ["kong.plugins.openidc.handler"] = "kong/plugins/openidc/handler.lua",
      ["kong.plugins.openidc.schema"] = "kong/plugins/openidc/schema.lua"
   }
}
