package = "kong-external-auth-plugin"
version = "0.0.1-1"

local pluginName = "kong-external-auth-plugin"

supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/har5hit/kong-external-auth-plugin",
  tag = "0.0.1"
}

description = {
  summary = "External Auth",
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
