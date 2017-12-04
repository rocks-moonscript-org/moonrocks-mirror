package = "kong-plugin-queryparams-to-headers"
version = "1.0-0"
local pluginName = "queryparams-to-headers"
source = {
  url = "git://github.com/pravin-raha/kong-plugin-queryParams-to-headers",
}
description = {
  summary = "A Kong plugin that will convert QueryParams into headers",
  license = "Apache License 2.0"
}
dependencies = {
  "lua ~> 5.1"
  }
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.queryparams-to-headers.handler"] = "handler.lua",
    ["kong.plugins.queryparams-to-headers.schema"]  = "schema.lua"
  }
}