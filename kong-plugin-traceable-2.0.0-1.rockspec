package = "kong-plugin-traceable"
version = "2.0.0-1"

source = {
  url = "https://downloads.traceable.ai/agent/kong/kong-plugin-traceable-2.0.0.tar.gz",
  tag = "v2.0.0",
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
  },
}
