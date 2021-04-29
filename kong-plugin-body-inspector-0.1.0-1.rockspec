package = "kong-plugin-body-inspector"
version = "0.1.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-body-inspector.git",
  tag = "0.1.0"
}
description = {
  summary = "body-inspector for Kong API gateway plugins.",
  homepage = "https://github.com/emartech/kong-plugin-body-inspector",
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
    ["kong.plugins.body-inspector.handler"] = "kong/plugins/body-inspector/handler.lua",
    ["kong.plugins.body-inspector.schema"] = "kong/plugins/body-inspector/schema.lua",
  }
}
