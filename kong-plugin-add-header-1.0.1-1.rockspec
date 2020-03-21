package = "kong-plugin-add-header"
version = "1.0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-add-header.git",
  tag = "1.0.1"
}
description = {
  summary = "Header setter for Kong API gateway plugins.",
  homepage = "https://github.com/emartech/kong-plugin-add-header",
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
    ["kong.plugins.add-header.handler"] = "kong/plugins/add-header/handler.lua",
    ["kong.plugins.add-header.schema"] = "kong/plugins/add-header/schema.lua",
  }
}
