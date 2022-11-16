package = "kong-plugin-circuit-breaker"
version = "1.0.0-1"

source = {
  url = "git://github.com/entertainment-venue/kong-plugin-circuit-breaker",
  tag = "1.0.0"
}

supported_platforms = {"linux", "macosx"}

description = {
  summary = "A Kong plugin for intelligent tracking of unhealthy upstream services.",
  license = "Apache 2.0",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.circuit-breaker.handler"] = "kong/plugins/circuit-breaker/handler.lua",
    ["kong.plugins.circuit-breaker.schema"] = "kong/plugins/circuit-breaker/schema.lua",
  }
}
