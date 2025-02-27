package = "kong-plugin-perimeterx"

version = "4.0.0-1"

supported_platforms = {"linux", "macosx"}
source = {
    url = "git://github.com/PerimeterX/perimeterx-kong-plugin.git",
    tag = "v4.0.0"
}

description = {
  summary = "PerimeterX Kong plugin",
  homepage = "http://www.perimeterx.com",
  license = "MIT/PerimeterX"
}

dependencies = {
    "perimeterx-nginx-plugin == 7.3.0"
}

local pluginName = "perimeterx"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
