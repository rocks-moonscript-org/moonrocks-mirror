package = "kong-plugin-token-to-header-extractor"
version = "1.0.0-1"

local pluginName = package:match("^kong%-plugin%-(.+)$")

supported_platforms = {"linux", "macosx"}

source = {
   url = "git://github.com/vnwonah/kong-token-to-header-extractor",
   tag = "1.0.0",
}
description = {
   summary = "Kong Plugin for extracting values from token and adding them as headers in upstream request",
   detailed = [[
      This plugin extracts values from request token and adds them as 
      headers in the request to the upstream server. 

      You can configure the token name to look for, what properties
      to extract from it and what header names to forward them as.
   ]],
   homepage = "https://twitter.com/vnwonah", 
   license = "MIT/X11" 
}
dependencies = {
}

build = {
   type = "builtin",
   modules = {
    -- TODO: add any additional files that the plugin consists of
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".daos"] = "kong/plugins/"..pluginName.."/daos.lua",
    ["kong.plugins."..pluginName..".migrations.000_base_token_to_header_extractor"] = "kong/plugins/"..pluginName.."/migrations/000_base_token_to_header_extractor.lua",
    ["kong.plugins."..pluginName..".migrations.init"] = "kong/plugins/"..pluginName.."/migrations/init.lua",
   }
}