package = "kong-plugin-openwhisk"
version = "0.1.1-0"
source = {
  url = "git://github.com/mashape/kong-plugin-openwhisk",
  tag = "0.1.1"
}
description = {
  summary = "This plugin allows Kong to invoke OpenWhisk action.",
  license = "Apache 2.0"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.openwhisk.handler"] = "kong/plugins/openwhisk/handler.lua",
    ["kong.plugins.openwhisk.schema"]  = "kong/plugins/openwhisk/schema.lua",
  }
}
