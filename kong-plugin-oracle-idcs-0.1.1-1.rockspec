local plugin_name = "oracle-idcs"
local package_name = "kong-plugin-"..plugin_name
local package_version = "0.1.1"
local rockspec_revision = "1"

package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }

source = {
  url = "git://github.com/pedrofarbo/kong-oracle-idcs"
}

description = {
  summary = "Kong plugin for Oracle IDCS OAuth2 Authentication",
  detailed = [[
    This plugin uses the Oracle IDCS introspection endpoint to validate tokens and
    supports multiple clients, and scope validation.
  ]],
  homepage = "https://github.com/pedrofarbo/kong-oracle-idcs",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "lua-resty-http >= 0.15"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-oracle-idcs.handler"] = "kong/plugins/kong-oracle-idcs/handler.lua",
    ["kong.plugins.kong-oracle-idcs.schema"] = "kong/plugins/kong-oracle-idcs/schema.lua"
  }
}