package = "set-upstream-by-header"
version = "0.1.0-1"


supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/mykaarma/kong-set-upstream-by-header",
  tag = "0.1.0",
}

description = {
  summary = "set-upstream-by-header is a custom plugin made at MyKaarma to set the upstream in Kong on the basis of the headers",
  homepage = "https://github.com/mykaarma/kong-set-upstream-by-header",
  license = "AGPL-3"
}

dependencies = {
  "lua >= 5.1"
}

local pluginName = "set-upstream-by-header"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}