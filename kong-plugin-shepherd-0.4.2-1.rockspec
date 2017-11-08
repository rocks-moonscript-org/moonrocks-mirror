package = "kong-plugin-shepherd"  -- as a convention; stick to the prefix: `kong-plugin-`
version = "0.4.2-1"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/DanielTimLee/shepherd",
  tag = "v0.4.2"
}

description = {
  summary = "Shephered is a plugin for Client Versioning and Redirect with API Endpoint, Modules.",
  homepage = "http://github.com/DanielTimLee/shepherd",
  license = "GPLv3"
}

dependencies = {}

local pluginName = "shepherd"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".migrations.postgres"] = "kong/plugins/"..pluginName.."/migrations/postgres.lua",
    ["kong.plugins."..pluginName..".misc.migrate"] = "kong/plugins/"..pluginName.."/misc/migrate.lua",
    ["kong.plugins."..pluginName..".misc.config"] = "kong/plugins/"..pluginName.."/misc/config.lua",
    ["kong.plugins."..pluginName..".views.layout"] = "kong/plugins/"..pluginName.."/views/layout.lua",
    ["kong.plugins."..pluginName..".views.index"] = "kong/plugins/"..pluginName.."/views/index.lua",
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".daos"] = "kong/plugins/"..pluginName.."/daos.lua",
    ["kong.plugins."..pluginName..".api"] = "kong/plugins/"..pluginName.."/api.lua",
  }
}
