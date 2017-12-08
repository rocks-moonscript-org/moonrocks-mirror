package = "kong-plugin-response-transformer-tobase64"
version = "1.0-5"
local pluginName = "response-transformer-tobase64"
source = {
  url = "git://github.com/pravin-raha/kong-plugin-response-transformer-tobase64",
}
description = {
  summary = "A Kong plugin",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.response-transformer-tobase64.handler"] = "handler.lua",
    ["kong.plugins.response-transformer-tobase64.schema"]  = "schema.lua"
  }
}