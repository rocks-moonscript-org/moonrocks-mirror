package = "kong-path-based-routing"
version = "0.1-3"
source = {
   url = "git+https://github.com/Optum/kong-path-based-routing.git"
}
description = {
   summary = "A plugin for Kong which dynamically sets the upstream hostname at runtime, based on the request URI",
   homepage = "https://github.com/Optum/kong-path-based-routing",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-path-based-routing.access"] = "src/access.lua",
      ["kong.plugins.kong-path-based-routing.handler"]  = "src/handler.lua",
      ["kong.plugins.kong-path-based-routing.schema"]= "src/schema.lua"
   }
}
