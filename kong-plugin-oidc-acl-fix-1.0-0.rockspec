package = "kong-plugin-oidc-acl-fix"
version = "1.0-0"
local pluginName = "oidc-acl-fix"
source = {
  url = "git://github.com/xfroelicher/kong-plugin-oidc-acl-v2",
}
description = {
  summary = "A Kong ACL plugin for oidc plugin from pravin-raha/kong-plugin-oidc-acl and fixed",
  license = "Apache 2.0"
}
dependencies = {
  "lua ~> 5.1",
  "lua-resty-cookie ~> 0.1.0"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.oidc-acl-fix.handler"] = "handler.lua",
    ["kong.plugins.oidc-acl-fix.schema"]  = "schema.lua"
  }
}