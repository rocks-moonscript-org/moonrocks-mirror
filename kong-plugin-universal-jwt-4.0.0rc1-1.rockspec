package = "kong-plugin-universal-jwt"
version = "4.0.0rc1-1"               -- This must match the info in the filename of this rockspec!
-- The version is the source code version, the trailing '-1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

supported_platforms = {"linux", "macosx"}
source = {
  -- these are initially not required to make it work
  url = "git+https://github.com/DSG-Localz/kong-plugin-universal-jwt.git",
  tag = "4.0.0rc1"
}

description = {
  summary = "Kong custom plugin for generating a JWT from some other auth method",
  homepage = "https://github.com/DSG-Localz/kong-plugin-universal-jwt",
  license = "MIT"
}

-- OpenSSL, JSON and base64url support come from the libraries bundled with Kong 3.
dependencies = {
  "lua >= 5.1",
}

local pluginName = "universal-jwt"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".env"] = "kong/plugins/"..pluginName.."/env.lua",
  }
}
