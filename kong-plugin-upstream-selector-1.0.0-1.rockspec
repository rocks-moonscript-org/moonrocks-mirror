package = "kong-plugin-upstream-selector"
version = "1.0.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-upstream-selector.git",
  tag = "1.0.0"
}
description = {
  summary = "",
  homepage = "https://github.com/emartech/kong-plugin-upstream-selector",
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
    ["kong.plugins.upstream-selector.handler"] = "kong/plugins/upstream-selector/handler.lua",
    ["kong.plugins.upstream-selector.schema"] = "kong/plugins/upstream-selector/schema.lua",
  }
}
