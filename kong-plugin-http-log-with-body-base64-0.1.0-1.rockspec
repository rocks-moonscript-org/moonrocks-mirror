package = "kong-plugin-http-log-with-body-base64"
version = "0.1.0-1"
source = {
  url = "git://github.com/thiago/kong-plugin-http-log-with-body",
  branch = "master"
}
description = {
  summary = "This plugin allows Kong to send log using HTTP request."
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.http-log-with-body-base64.handler"] = "kong/plugins/http-log-with-body-base64/handler.lua",
    ["kong.plugins.http-log-with-body-base64.schema"]  = "kong/plugins/http-log-with-body-base64/schema.lua",
  }
}