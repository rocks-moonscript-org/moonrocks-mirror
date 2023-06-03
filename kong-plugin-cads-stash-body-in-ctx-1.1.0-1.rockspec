package = "kong-plugin-cads-stash-body-in-ctx"

version = "1.1.0-1"
-- The version '0.1.0' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

local pluginName = package:match("^kong%-plugin%-cads%-(.+)$") -- "stash-body-in-ctx"
supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/CADSCombustibleLemons/kong-plugin-cads-stash-body-in-ctx",
  tag = "1.1.0",
}
description = {
  summary = "A Kong plugin that will stash the request body in the kong.ctx.shared to be later consumed as a custom_fields_by_lua in the http-log plugin",
  homepage = "https://github.com/CADSCombustibleLemons/kong-plugin-cads-stash-body-in-ctx.git",
  license = "Apache 2.0"
}
dependencies = {
  "lua ~> 5"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.stash-body-in-ctx.handler"] = "src/handler.lua",
    ["kong.plugins.stash-body-in-ctx.schema"]  = "src/schema.lua",
  }
}
