package = "kong-plugin-rule-based-header-transformer"
version = "1.0.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-rule-based-header-transformer.git",
  tag = "1.0.0"
}
description = {
  summary = "Rule based header transformer for Kong",
  homepage = "https://github.com/emartech/kong-plugin-rule-based-header-transformer",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1",
  "classic 0.1.0-1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.rule-based-header-transformer.handler"] = "kong/plugins/rule-based-header-transformer/handler.lua",
    ["kong.plugins.rule-based-header-transformer.schema"] = "kong/plugins/rule-based-header-transformer/schema.lua",
  }
}
