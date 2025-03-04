package = "kong-plugin-check-permissions"
version = "0.1.1-1"
source = {
  url = "git+https://github.com/LeonelM99/kong-plugin-check-permissions.git",
  tag = "V0.1.1-1"
}
description = {
  summary = "A Kong plugin that will check permissions to execute a method",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.check-permissions.handler"] = "handler.lua",
    ["kong.plugins.check-permissions.schema"]  = "schema.lua"
  }
}
