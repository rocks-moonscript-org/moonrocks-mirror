package = "kong-plugin-check-permissions"
version = "0.1.7-1"
source = {
    url = "git+https://github.com/LeonelM99/kong-plugin-check-permissions.git"
}
dependencies = {
    "lua ~> 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-plugin-check-permissions.handler"] = "handler.lua",
    ["kong.plugins.kong-plugin-check-permissions.schema"]  = "schema.lua"
  }
}
description = {
  summary = "A Kong plugin to check for specific permission claims in headers and allow certain methods",
  license = "MIT"
}

