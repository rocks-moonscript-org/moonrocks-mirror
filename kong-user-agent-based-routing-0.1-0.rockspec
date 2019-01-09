package = "kong-user-agent-based-routing"
version = "0.1-0"
source = {
   url = "git+https://github.com/bogas04/kong-user-agent-based-routing.git"
}
description = {
   summary = "Kong plugin to route based on user_agent_header",
   homepage = "https://github.com/bogas04/kong-user-agent-based-routing",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-user-agent-based-routing.access"] = "src/access.lua",
      ["kong.plugins.kong-user-agent-based-routing.handler"]  = "src/handler.lua",
      ["kong.plugins.kong-user-agent-based-routing.schema"]= "src/schema.lua"
   }
}
