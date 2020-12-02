package = "kong-plugin-oauth2-audience"
version = "0.2.3-1"
local pluginName = package:match("^kong%-plugin%-(.+)$") 

supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/TelkomIndonesia/kong-plugin-oauth2-audience",
  tag = "0.2.3"
}

description = {
  summary = "Kong authentication plugin to integrate with external OAuth2 / OpenID Connect Provider ",
  homepage = "https://luarocks.org/modules/telkomindonesia",
}

dependencies = {
    "lua-resty-openidc == 1.7.2-1",
    "lua-resty-jwt == 0.2.2-0"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".access"] = "kong/plugins/"..pluginName.."/access.lua",
    ["kong.plugins."..pluginName..".error"] = "kong/plugins/"..pluginName.."/error.lua",
    ["kong.plugins."..pluginName..".daos"] = "kong/plugins/"..pluginName.."/daos.lua",
    ["kong.plugins."..pluginName..".migrations.init"] = "kong/plugins/"..pluginName.."/migrations/init.lua",
    ["kong.plugins."..pluginName..".migrations.000_base"] = "kong/plugins/"..pluginName.."/migrations/000_base.lua",
  }
}
