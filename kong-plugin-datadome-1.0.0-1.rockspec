package = "kong-plugin-datadome"
version = "1.0.0-1"
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "datadome"

supported_platforms = {"linux", "macosx"}
source = {
  url = "///var/tmp/kong-datadome.tar.gz"
}

description = {
  summary = "Kong module for DataDome Bot Protection",
  homepage = "https://docs.datadome.co/docs/kong-plugin",
  license = "Apache 2.0"
}

dependencies = {
  "datadome-openresty == 1.1.0"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
