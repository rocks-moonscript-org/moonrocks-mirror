package = "kong-plugin-api-key-access-control"
version = "0.1.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-api-key-access-control.git",
  tag = "0.1.0"
}
description = {
  summary = "Api key access control plugin for Kong.",
  homepage = "https://github.com/emartech/kong-plugin-api-key-access-control",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1",
  "classic 0.1.0-1",
  "kong-lib-logger >= 0.3.0-1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.api-key-access-control.handler"] = "kong/plugins/api-key-access-control/handler.lua",
    ["kong.plugins.api-key-access-control.schema"] = "kong/plugins/api-key-access-control/schema.lua",
  }
}
