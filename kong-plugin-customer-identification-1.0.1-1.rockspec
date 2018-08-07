package = "kong-plugin-customer-identification"
version = "1.0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-customer-identification.git",
  tag = "1.0.1"
}
description = {
  summary = "Customer identifier plugin for Kong API gateway",
  homepage = "https://github.com/emartech/kong-plugin-customer-identification",
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
    ["kong.plugins.customer-identification.handler"] = "kong/plugins/customer-identification/handler.lua",
    ["kong.plugins.customer-identification.schema"] = "kong/plugins/customer-identification/schema.lua",
  }
}
