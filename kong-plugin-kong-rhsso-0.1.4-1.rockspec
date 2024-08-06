local plugin_name = "kong-rhsso"
local package_name = "kong-plugin-"..plugin_name
local package_version = "0.1.4"
local rockspec_revision = "1"

package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }

source = {
  url = "git://github.com/pedrofarbo/kong-rhsso"
}

description = {
  summary = "Kong plugin for RHSSO authentication",
  detailed = [[
    This plugin uses the RHSSO introspection endpoint to validate tokens and
    supports multiple realms, clients, and scope validation.
  ]],
  homepage = "https://github.com/pedrofarbo/kong-rhsso",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "lua-resty-http >= 0.15"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-rhsso.handler"] = "kong/plugins/kong-rhsso/handler.lua",
    ["kong.plugins.kong-rhsso.schema"] = "kong/plugins/kong-rhsso/schema.lua"
  }
}