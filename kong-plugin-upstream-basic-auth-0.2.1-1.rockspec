package = "kong-plugin-upstream-basic-auth" 
                                  
version = "0.2.1-1"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/mvanholsteijn/kong-plugin-upstream-basic-auth",
  tag = "v0.2.1-1"
}

description = {
  summary = "A plugin to insert basic authentication headers to the upstream.",
  license = "Apache-2.0",
  homepage = "https://github.com/mvanholsteijn/kong-plugin-upstream-basic-auth",
}

dependencies = {
}

local pluginName = "upstream-basic-auth" 
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".api"] = "kong/plugins/"..pluginName.."/api.lua",
    ["kong.plugins."..pluginName..".daos"] = "kong/plugins/"..pluginName.."/daos.lua",
    ["kong.plugins."..pluginName..".access"] = "kong/plugins/"..pluginName.."/access.lua",
    ["kong.plugins."..pluginName..".upstreambasicauth_credentials"] = "kong/plugins/"..pluginName.."/upstreambasicauth_credentials.lua",
    ["kong.plugins."..pluginName..".migrations.init"] = "kong/plugins/"..pluginName.."/migrations/init.lua",
    ["kong.plugins."..pluginName..".migrations.000_base_upstream_basic_auth"] = "kong/plugins/"..pluginName.."/migrations/000_base_upstream_basic_auth.lua",
    ["kong.plugins."..pluginName..".migrations.001_14_to_15"] = "kong/plugins/"..pluginName.."/migrations/001_14_to_15.lua",
  }
}
