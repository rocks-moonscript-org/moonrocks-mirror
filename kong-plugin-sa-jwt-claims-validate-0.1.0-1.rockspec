package = "kong-plugin-sa-jwt-claims-validate"  -- TODO: rename, must match the info in the filename of this rockspec!
                                  -- as a convention; stick to the prefix: `kong-plugin-`
version = "0.1.0-1"               -- TODO: renumber, must match the info in the filename of this rockspec!
-- The version '0.1.0' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- TODO: This is the name to set in the Kong configuration `plugins` setting.
-- Here we extract it from the package name.
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "sa-jwt-claims-validate"

supported_platforms = {"linux"}
source = {
  url = "https://github.com/Voronenko/kong-plugin-sa-jwt-claims-validate.git",
  tag = "0.1.0"
}

description = {
  summary = "kong-plugin-sa-jwt-claims-validate is a plugin for kong v2 family, that helps to validate JWT token contents before accessing your API",
  homepage = "https://github.com/Voronenko/kong-plugin-sa-jwt-claims-validate",
  license = "MIT"
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
