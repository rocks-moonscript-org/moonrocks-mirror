package = "kong-enhanced-http-log"
version = "1.0.0-1"
source = {
   url = "git+ssh://git@github.com/NumericalTechnologies/kong-enhanced-http-log.git"
}
description = {
   homepage = "https://github.com/NumericalTechnologies/kong-enhanced-http-log",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.enhanced-http-log.access"] = "kong/plugins/enhanced-http-log/access.lua",
      ["kong.plugins.enhanced-http-log.handler"] = "kong/plugins/enhanced-http-log/handler.lua",
      ["kong.plugins.enhanced-http-log.log"] = "kong/plugins/enhanced-http-log/log.lua",
      ["kong.plugins.enhanced-http-log.schema"] = "kong/plugins/enhanced-http-log/schema.lua",
   }
}
