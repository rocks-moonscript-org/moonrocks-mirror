package = "kong-plugin-rbac"  -- TODO: rename, must match the info in the filename of this rockspec!
                                  -- as a convention; stick to the prefix: `kong-plugin-`
version = "0.2.1-1"               -- TODO: renumber, must match the info in the filename of this rockspec!
-- The version '0.2.1' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- TODO: This is the name to set in the Kong configuration `custom_plugins` setting.
-- Here we extract it from the package name.
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "rbac"

supported_platforms = {"linux", "macosx"}
source = {
  -- these are initially not required to make it work
  url = "git://github.com/mr5/kong-rbac",
  tag = "0.2.1"
}

description = {
  summary = "Kong-rbac is a rbac plugin for Kong",
  homepage = "https://github.com/mr5/kong-rbac",
  license = "MIT"
}

dependencies = {
  "router == 2.1-0",
  "lodash == 0.02-0"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
