package = "kong-oidc-acl"
version = "1.0-0"
local pluginName = "oidc-acl"
source = {
  url = "git://github.com/longkunz/kong-oidc-acl",
  tag = "v1.0"
}
description = {
  summary = "A Kong ACL plugin for oidc plugin",
  license = "MIT License"
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