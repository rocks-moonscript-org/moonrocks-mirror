package = "kong-request-header"
version = "0.0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url="git+https://github.com/i4platform/kong-request-header.git"
}
description = {
  summary = "Kong Plugin for Request Header",
  license = "Apache-2.0",
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-request-header.handler"] = "kong-request-header/handler.lua",
    ["kong.plugins.kong-request-header.schema"] = "kong-request-header/schema.lua",
    ["kong.plugins.kong-request-header.access"] = "kong-request-header/access.lua",
  }
}
