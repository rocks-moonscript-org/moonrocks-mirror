package = "kong-startbid-oidc-acl"
version = "1.2-1"
local pluginName = "startbid-oidc-acl"
source = {
  url = "git://github.com/LucasCCS/kong-startbid-oidc-acl",
  tag = "v1.2-1"
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
    ["kong.plugins.startbid-oidc-acl.handler"] = "handler.lua",
    ["kong.plugins.startbid-oidc-acl.schema"]  = "schema.lua"
  }
}