package = "kong-plugin-dynamic-route"
version = "0.0.1-1"
-- The version '0.0.1' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- TODO: This is the name to set in the Kong configuration `plugins` setting.
local pluginName = "dynamic-route"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/samngms/kong-plugin-dynamic-route",
  tag = "0.0.1"
}

description = {
  summary = "Kong Dynamic Route Plugin",
  homepage = "https://github.com/samngms/kong-plugin-dynamic-route",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.dynamic-route.handler"]          = "kong/plugins/dynamic-route/handler.lua",
    ["kong.plugins.dynamic-route.schema"]           = "kong/plugins/dynamic-route/schema.lua",
    ["kong.plugins.dynamic-route.string_util"]      = "kong/plugins/dynamic-route/string_util.lua"
  }
}
