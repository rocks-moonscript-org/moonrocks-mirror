package = "kong-plugin-upstream-oauth2"

version = "1.0.0-1"

local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "upstream-oauth2"
supported_platforms = {"linux", "macosx"}

source = {
  url = "",
  tag = "v1.0.0",
}
description = {
  summary = "A Kong plugin to negotiate oauth2 authentication with upstream services",
  license = "Apache 2.0"
}
dependencies = {
  "lua ~> 5"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.upstream-oauth2.handler"] = "src/handler.lua",
    ["kong.plugins.upstream-oauth2.schema"]  = "src/schema.lua",
    ["kong.plugins.upstream-oauth2.tokens"]  = "src/tokens.lua",
  }
}
