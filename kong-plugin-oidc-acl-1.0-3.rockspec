package = "kong-plugin-oidc-acl"
version = "1.0-3"
local pluginName = "oidc-acl"
source = {
  url = "git://github.com/pravin-raha/kong-plugin-oidc-acl",
  tag = "v1.0-3"
}
description = {
  summary = "A Kong ACL plugin for oidc plugin",
  license = "Apache 2.0"
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.oidc-acl.handler"] = "handler.lua",
    ["kong.plugins.oidc-acl.schema"]  = "schema.lua"
  }
}