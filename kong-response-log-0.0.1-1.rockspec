package = "kong-response-log"
version = "0.0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/i4platform/kong-custom-plugin.git",
}
description = {
  summary = "Kong Plugin for Response Log",
  license = "Apache-2.0",
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-response-log.handler"] = "kong-response-log/handler.lua",
    ["kong.plugins.kong-response-log.schema"] = "kong-response-log/schema.lua",
    ["kong.plugins.kong-response-log.access"] = "kong-response-log/access.lua",
  }
}