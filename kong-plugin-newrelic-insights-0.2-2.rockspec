package = "kong-plugin-newrelic-insights"
version = "0.2-2"
-- The version '0.2' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/JnMik/kong-plugin-newrelic-insights",
  tag = "0.2"
}

description = {
  summary = "Extends Kong API Gateway for Newrelic Insights tracking",
  homepage = "http://getkong.org",
  license = "MIT"
}

dependencies = {
}

local pluginName = "newrelic-insights"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
