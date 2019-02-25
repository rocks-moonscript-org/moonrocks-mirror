package = "kong-plugin-td-kong-plugin"
version = "1.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git@github.com:xiaopengkuang/custom-kong.git",
  tag = "v1.0",
  dir="custom-kong"
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
    ["kong.plugins.td-sso.handler"] = "td-sso/handler.lua",
    ["kong.plugins.td-sso.schema"] = "td-sso/schema.lua",
    ["kong.plugins.http-log-extended.handler"] = "http-log-extended/handler.lua",
    ["kong.plugins.http-log-extended.schema"] = "http-log-extended/schema.lua",
    ["kong.plugins.http-log-extended.serializer"] = "http-log-extended/serializer.lua"
  }
}