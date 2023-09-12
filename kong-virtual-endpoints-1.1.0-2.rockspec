package = "kong-virtual-endpoints"
version = "1.1.0-2"
source = {
   url = "git+ssh://git@github.com/NumericalTechnologies/kong-virtual-endpoints.git"
}
description = {
   homepage = "https://github.com/NumericalTechnologies/kong-virtual-endpoints",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.virtual-endpoints.access"] = "kong/plugins/virtual-endpoints/access.lua",
      ["kong.plugins.virtual-endpoints.handler"] = "kong/plugins/virtual-endpoints/handler.lua",
      ["kong.plugins.virtual-endpoints.schema"] = "kong/plugins/virtual-endpoints/schema.lua",
   }
}
