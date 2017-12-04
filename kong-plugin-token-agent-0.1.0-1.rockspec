package = "kong-plugin-token-agent"
version = "0.1.0-1"
source = {
   url = "git://github.com/Kong-Study-Group/kong-plugin-token-agent",
   tag = "0.1.0"
}
description = {
   summary = "Kong custom plugin for checking token by restful api",
   homepage = "https://github.com/Kong-Study-Group/kong-plugin-token-agent",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.token-agent.access"] = "kong/plugins/token-agent/access.lua",
      ["kong.plugins.token-agent.handler"] = "kong/plugins/token-agent/handler.lua",
      ["kong.plugins.token-agent.schema"] = "kong/plugins/token-agent/schema.lua",
      ["spec.token-agent.01-access_spec"] = "spec/token-agent/01-access_spec.lua"
   }
}
