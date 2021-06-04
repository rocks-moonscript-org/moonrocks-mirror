package = "kong-http-log-with-body-v2"
version = "0.0.1-2"
source = {
  url = "git://github.com/G2HJei/kong-http-log-with-body-v2",
  branch = "master"
}
description = {
  summary = "This plugin allows Kong to send log using HTTP request. Based on zenvia's plugin, with improvements for XML body handling and bug fixes."
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-http-log-with-body-v2.handler"] = "kong/plugins/kong-http-log-with-body-v2/handler.lua",
    ["kong.plugins.kong-http-log-with-body-v2.schema"]  = "kong/plugins/kong-http-log-with-body-v2/schema.lua",
  }
}