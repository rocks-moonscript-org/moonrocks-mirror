package = "kong-plugin-http-log-multi-body"
version = "0.1.2-1"
source = {
  url = "git+https://gitlab.com/yotsu/kong-plugin-http-log-multi-body",
  tag = "v0.1.2-1"
}
description = {
  summary = "This plugin allows Kong to send log using HTTP request."
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.http-log-multi-body.handler"] = "kong/plugins/http-log-multi-body/handler.lua",
    ["kong.plugins.http-log-multi-body.schema"]  = "kong/plugins/http-log-multi-body/schema.lua",
  }
}
