package = "spherical_defense"

version = "0.0.3-2"

-- The version '0.0.1' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

supported_platforms = {"linux", "macosx"}

source = {
  url = "https://kong-sphericaldefence.s3-us-west-2.amazonaws.com/kong-sphericaldefence-plugin.tar.gz",
  tag = "0.0.1"
}

description = {
  summary = "A Kong plugin that validates requests agains a running Spherical instance before proxying the original.",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.sphericaldefence.access"] = "src/access.lua",
    ["kong.plugins.sphericaldefence.handler"] = "src/handler.lua",
    ["kong.plugins.sphericaldefence.schema"] = "src/schema.lua",
	  ["kong.plugins.sphericaldefence.json"] = "src/json.lua"
  }
}