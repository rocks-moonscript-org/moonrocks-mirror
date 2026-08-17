package = "kong-plugin-traceable"
version = "2.3.0-1"


source = {
  url = "https://downloads.traceable.ai/agent/kong/kong-plugin-traceable-2.3.0.tar.gz",
  tag = "v2.3.0",
}

description = {
  summary = "Integrate Kong with Traceable",
  homepage = "https://traceable.ai",
  license = "Traceable",
}

dependencies = {
  "lua >= 5.1",
  "lua-cjson",
  "lua-resty-http >= 0.11",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.traceable.handler"] = "kong/plugins/traceable/handler.lua",
    ["kong.plugins.traceable.schema"] = "kong/plugins/traceable/schema.lua",
    ["kong.plugins.traceable.utility"] = "kong/plugins/traceable/utility.lua",
    ["kong.plugins.traceable.cloud_metadata"] = "kong/plugins/traceable/cloud_metadata.lua",
    ["kong.plugins.traceable.ai_firewall"] = "kong/plugins/traceable/ai_firewall.lua",
    ["kong.plugins.traceable-ai-extension.handler"] = "kong/plugins/traceable-ai-extension/handler.lua",
    ["kong.plugins.traceable-ai-extension.schema"] = "kong/plugins/traceable-ai-extension/schema.lua",
  },
}
