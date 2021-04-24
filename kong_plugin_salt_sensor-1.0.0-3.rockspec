package = "kong_plugin_salt_sensor"
version = "1.0.0-3"

local pluginName = package:match("^kong%_plugin%_(.+)$")  -- "salt-sensor"

supported_platforms = {"linux", "macosx"}
source = {
  url = "http://salt.security",
  tag = "0.1.0"
}

description = {
  summary = "Salt kong sensor",
  homepage = "http://salt.security"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".log"] = "kong/plugins/"..pluginName.."/log.lua",
  }
}
