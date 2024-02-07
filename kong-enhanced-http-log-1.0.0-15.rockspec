package = "kong-enhanced-http-log"
version = "1.0.0-15"
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

      ["kong.tools.queue"] = "kong/tools/queue.lua",
      ["kong.tools.sandbox"] = "kong/tools/sandbox.lua",
      ["kong.tools.kong-lua-sandbox"] = "kong/tools/kong-lua-sandbox.lua",

      ["kong.workspaces"] = "kong/workspaces/init.lua",
   }
}
