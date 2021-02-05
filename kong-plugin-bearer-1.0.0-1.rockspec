package = "kong-plugin-bearer"
version = "1.0.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/bearer/kong-plugin.git",
  tag = "v1.0.0"
}
description = {
  license = "MIT",
  homepage = "https://github.com/bearer/kong-plugin",
  summary = "A plugin for Kong to remediate security & compliance risks by automatically mapping your data flows",
  detailed = [[
    The Bearer Kong plugin captures API traffic from Kong API Gateway and sends it to a local Bearer agent for analysis.
  ]],
}
dependencies = {
  "lua ~> 5.1",
  "lua-messagepack ~> 0.5"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.bearer.handler"] = "handler.lua",
    ["kong.plugins.bearer.logger"] = "logger.lua",
    ["kong.plugins.bearer.schema"] = "schema.lua",
    ["kong.plugins.bearer.serializer"] = "serializer.lua"
  }
}
