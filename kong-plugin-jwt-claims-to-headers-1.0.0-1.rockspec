package = "kong-plugin-jwt-claims-to-headers"

version = "1.0.0-1"               -- TODO: renumber, must match the info in the filename of this rockspec!
-- The version '0.1.0' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- Here we extract it from the package name.
local pluginName = package:match("^kong%-plugin%-(.+)$")

-- supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/openwares/kong-plugin-jwt-claims-to-headers.git",
  tag = "master"
}

description = {
  summary = "Extracts JWT claims and adds them as HTTP request headers",
  homepage = "http://github.com/openwares/kong-plugin-jwt-claims-to-headers",
  license = "Apache 2.0"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
