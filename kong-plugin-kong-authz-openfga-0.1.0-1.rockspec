package = "kong-plugin-kong-authz-openfga"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/dol/kong-authz-openfga.git",
   tag = "v0.1.0-1"
}
description = {
   summary = "Kong plugin for kong-authz-openfga integration",
   homepage = "https://github.com/dol/kong-authz-openfga",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-authz-openfga.access"] = "kong/plugins/kong-authz-openfga/access.lua",
      ["kong.plugins.kong-authz-openfga.handler"] = "kong/plugins/kong-authz-openfga/handler.lua",
      ["kong.plugins.kong-authz-openfga.schema"] = "kong/plugins/kong-authz-openfga/schema.lua"
   }
}
