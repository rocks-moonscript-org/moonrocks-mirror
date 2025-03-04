package = "kong-plugin-datadome"  -- TODO: rename, must match the info in the filename of this rockspec!
                                  -- as a convention; stick to the prefix: `kong-plugin-`
version = "0.4.0-1"               -- TODO: renumber, must match the info in the filename of this rockspec!
-- The version '0.1.0' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- TODO: This is the name to set in the Kong configuration `plugins` setting.
-- Here we extract it from the package name.
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "datadome"

supported_platforms = {"linux", "macosx"}
source = {
  url = "///var/tmp/kong-datadome.tar.gz"
}

description = {
  summary = "Datadome Kong plugin detects and protects against bot activity",
  homepage = "https://datadome.co/",
  license = "Apache 2.0"
}

dependencies = {
  "datadome-openresty"
}

build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional files that the plugin consists of
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
