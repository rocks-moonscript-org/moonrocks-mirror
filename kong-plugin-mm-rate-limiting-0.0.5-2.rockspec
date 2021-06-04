package = "kong-plugin-mm-rate-limiting"
version = "0.0.5-2"

local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "mm-rate-limiting"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/ManoManoTech/kong-plugin-mm-rate-limiting",
  tag = "main"
}

description = {
  summary = "Manomano plugin to handle rate limiting",
  homepage = "https://www.manomano.fr",
  license = "Private"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".expiration"] = "kong/plugins/"..pluginName.."/expiration.lua",
    ["kong.plugins."..pluginName..".datadog"] = "kong/plugins/"..pluginName.."/datadog.lua",
  }
}
