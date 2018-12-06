package = "ab-microsensor"
version = "0.1.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/ArecaBay/kong-plugin-ab-microsensor",
  tag = "1.0"
}
description = {
  summary = "AB-Microsensor is a light weight module to capture all http transactions and send them to ArecaBay Cloud",
  homepage = "https://docs.konghq.com/hub/arecabay/ab-microsensor/",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1"
}

local pluginName = "ab-microsensor"

build = {
  type = "builtin",
  modules = {
  
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".daos"] = "kong/plugins/"..pluginName.."/daos.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".migrations" ..".postgres"] = "kong/plugins/"..pluginName.."/migrations/postgres.lua",
    ["kong.plugins."..pluginName..".abserialize"] = "kong/plugins/"..pluginName.."/abserialize.lua",
  }
}

