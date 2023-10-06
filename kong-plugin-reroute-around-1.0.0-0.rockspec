package = "kong-plugin-reroute-around"
                                  -- as a convention; stick to the prefix: `kong-plugin-`
version = "1.0.0-0"               -- TODO: renumber, must match the info in the filename of this rockspec!
-- The version '0.1.0' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- TODO: This is the name to set in the Kong configuration `plugins` setting.
-- Here we extract it from the package name.
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "reroute-around"

supported_platforms = {"linux", "macosx"}
source = {
  url = "https://github.com/wendeldavid/kong-plugin-reroute-around.git",
  tag = "1.0.0"
}

description = {
  summary = "Reroute a request to a custom service if header value mathces with configuration, and not calls the upstream service.",
  homepage = "https://github.com/wendeldavid/kong-plugin-reroute-around",
  license = "Apache 2.0"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional files that the plugin consists of
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
