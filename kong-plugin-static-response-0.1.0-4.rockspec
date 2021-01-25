package = "kong-plugin-static-response"
version = "0.1.0-4"
-- Here we extract it from the package name.
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "myplugin"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/nitinbhadauria/kong-plugin-static-response",
  tag = "0.1.0-4"
}

description = {
  summary = "Respond back with Static Content and Terminate the request.",
  homepage = "https://www.tothenew.com/cloud-devops",
  license = "Apache 2.0"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional files that the plugin consists of
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
