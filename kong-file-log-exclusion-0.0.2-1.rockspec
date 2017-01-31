package = "kong-file-log-exclusion"
version = "0.0.2-1"
source = {
  url = "https://github.com/PayMaya/kong-file-log-exclusion"
}
description = {
  summary = "Kong file logging plugin with options to exclude logged attributes."
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.file-log-exclusion.handler"] = "handler.lua",
    ["kong.plugins.file-log-exclusion.schema"] = "schema.lua",
    ["kong.plugins.file-log-exclusion.attribute-remover"] = "attribute-remover.lua"
  }
}
