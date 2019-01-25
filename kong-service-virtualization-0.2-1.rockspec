package = "kong-service-virtualization"
version = "0.2-1"
source = {
   url = "git+https://github.com/Optum/kong-service-virtualization.git"
}
description = {
   summary = "This plugin enables virtual API request and response pair mocking on the Kong API Gateway before the actual backend service is ready to serve transactions",
   homepage = "https://github.com/Optum/kong-service-virtualization",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-service-virtualization.access"] = "src/access.lua",
      ["kong.plugins.kong-service-virtualization.handler"]  = "src/handler.lua",
      ["kong.plugins.kong-service-virtualization.schema"]= "src/schema.lua"
   }
}
