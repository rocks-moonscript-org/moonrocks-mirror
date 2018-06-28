package = "kong-plugin-signalfx"

version = "0.0.1-1"

supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/signalfx/kong-plugin-signalfx",
  tag = "0.0.1"
}

description = {
  summary = "Aggregates Kong metrics for consumption via /signalfx status endpoint",
  homepage = "https://github.com/signalfx/kong-plugin-signalfx",
  license = "Apache"
}

dependencies = {}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.signalfx.api"] = "kong/plugins/signalfx/api.lua",
    ["kong.plugins.signalfx.handler"] = "kong/plugins/signalfx/handler.lua",
    ["kong.plugins.signalfx.schema"] = "kong/plugins/signalfx/schema.lua",
  }
}
