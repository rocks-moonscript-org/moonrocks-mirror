package = "kong-plugin-td-kong-plugin"
version = "0.1-0"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/xiaopengkuang/custom-kong"
}
description = {
  summary = "td-kong-plugin",
  license = "MIT",
  homepage = "https://github.com/xiaopengkuang/custom-kong",
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.td-sso.handler"] = "plugins/td-sso/handler.lua",
    ["kong.plugins.td-sso.schema"] = "plugins/td-sso/schema.lua",
    ["kong.plugins.td-sso.http"] = "plugins/td-sso/http.lua",
    ["kong.plugins.td-sso.http_headers"] = "plugins/td-sso/http_headers.lua",
    ["kong.plugins.http-log-extended.handler"] = "plugins/http-log-extended/handler.lua",
    ["kong.plugins.http-log-extended.schema"] = "plugins/http-log-extended/schema.lua",
    ["kong.plugins.http-log-extended.serializer"] = "plugins/http-log-extended/serializer.lua"
  }
}