package = "kong-plugin-google-logging"
version = "0.0.1-1"               -- TODO: renumber, must match the info in the filename of this rockspec!
-- The version '0.1.0' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- Here we extract it from the package name.
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "google-logging"

supported_platforms = {"linux", "macosx"}
source = {
  url = "https://github.com/SmartParkingTechnology/kong-google-logging-plugin",
  -- tag = "0.1.0"
}

description = {
  summary = "Plugin for exporting Kong request data such as service name, route name, consumer name or request latency to Google Cloud Logging.",
  homepage = "https://github.com/SmartParkingTechnology/kong-google-logging-plugin",
  license = "Apache 2.0"
}

dependencies = {
  "lua-cjson",
  "mimetypes",
}

build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional files that the plugin consists of
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".google.core.http"] = "kong/plugins/"..pluginName.."/google/core/http.lua",
    ["kong.plugins."..pluginName..".google.core.oauth"] = "kong/plugins/"..pluginName.."/google/core/oauth.lua",
  }
}
