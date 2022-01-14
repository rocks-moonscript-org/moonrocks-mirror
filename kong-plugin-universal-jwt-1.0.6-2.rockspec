package = "kong-plugin-universal-jwt"
version = "1.0.6-2"               -- This must match the info in the filename of this rockspec!
-- The version is the source code version, the trailing '-1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

supported_platforms = {"linux", "macosx"}
source = {
  -- these are initially not required to make it work
  url = "git+ssh://git@github.com/localz/kong-plugin-universal-jwt.git",
  tag = "1.0.6"
}

description = {
  summary = "Kong custom plugin for generating a JWT from some other auth method",
  homepage = "https://github.com/localz/kong-plugin-universal-jwt",
  license = "MIT"
}

dependencies = {
  "luajwtjitsi ~> 2.0-0"
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
