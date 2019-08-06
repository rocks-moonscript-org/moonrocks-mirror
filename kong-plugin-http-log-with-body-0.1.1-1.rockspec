package = "kong-plugin-http-log-with-body"
version = "0.1.1-1"
source = {
  url = "git://github.com/hmagarotto/kong-plugin-http-log-with-body",
  tag = "0.1.1"
}
description = {
  summary = "This plugin allows Kong to send log using HTTP request."
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.http-log-with-body.handler"] = "kong/plugins/http-log-with-body/handler.lua",
    ["kong.plugins.http-log-with-body.schema"]  = "kong/plugins/http-log-with-body/schema.lua",
  }
}