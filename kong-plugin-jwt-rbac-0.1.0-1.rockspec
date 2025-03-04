package = "kong-plugin-jwt-rbac"

local pluginName = 'rbac'

supported_platforms = {"linux", "macosx"}
source = {
  -- these are initially not required to make it work
  url = "...",
  tag = "0.1.0"
}
version = source.tag .. "-1"

description = {
  summary = "kong-plugin-jwt-rbac is a rbac plugin for Kong",
  license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".api"] = "kong/plugins/"..pluginName.."/api.lua",
    ["kong.plugins."..pluginName..".constants"] = "kong/plugins/"..pluginName.."/constants.lua",
    ["kong.plugins."..pluginName..".daos"] = "kong/plugins/"..pluginName.."/daos.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".functions"] = "kong/plugins/"..pluginName.."/functions.lua",
    ["kong.plugins."..pluginName..".migrations.init"] = "kong/plugins/"..pluginName.."/migrations/init.lua",
    ["kong.plugins."..pluginName..".migrations.000_base_rbac"] = "kong/plugins/"..pluginName.."/migrations/000_base_rbac.lua"
  }
}
