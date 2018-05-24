package = "kong-plugin-perimeterx"

version = "1.4.0-1"

supported_platforms = {"linux", "macosx"}
source = {
    url = "git://github.com/PerimeterX/perimeterx-kong-plugin.git",
    tag = "v1.4.0"
}

description = {
  summary = "PerimeterX Kong plugin",
  homepage = "http://www.perimeterx.com",
  license = "MIT/PerimeterX"
}

dependencies = {
    "perimeterx-nginx-plugin == 4.0"
}

local pluginName = "perimeterx"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
