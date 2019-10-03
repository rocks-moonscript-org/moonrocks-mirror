package = "kong-plugin-request-firewall"
version = "0.2.1-1"
-- The version '0.2.1' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- TODO: This is the name to set in the Kong configuration `plugins` setting.
local pluginName = "request-firewall"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/samngms/kong-plugin-request-firewall",
  tag = "0.2.1"
}

description = {
  summary = "Kong Request Firewall Plugin, it can validate various types of input.",
  homepage = "https://github.com/samngms/kong-plugin-request-firewall",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.request-firewall.handler"] = "kong/plugins/request-firewall/handler.lua",
    ["kong.plugins.request-firewall.schema"] = "kong/plugins/request-firewall/schema.lua",
  }
}
