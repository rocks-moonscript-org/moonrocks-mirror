package = "kong-plugin-flexible-rate-limit"
version = "0.0.6-1"
-- The version '0.0.6' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- TODO: This is the name to set in the Kong configuration `plugins` setting.
local pluginName = "flexible-rate-limit"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/samngms/kong-plugin-flexible-rate-limit",
  tag = "0.0.6"
}

description = {
  summary = "Kong Request Firewall Plugin, it can validate various types of input.",
  homepage = "https://github.com/samngms/kong-plugin-flexible-rate-limit",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.flexible-rate-limit.handler"]          = "kong/plugins/flexible-rate-limit/handler.lua",
    ["kong.plugins.flexible-rate-limit.schema"]           = "kong/plugins/flexible-rate-limit/schema.lua"
  }
}
