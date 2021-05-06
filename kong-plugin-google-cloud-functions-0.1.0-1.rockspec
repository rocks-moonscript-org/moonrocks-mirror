package = "kong-plugin-google-cloud-functions"
                                  
version = "0.1.0-1"


local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "google-cloud-functions"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/victor-mesquita/kong-plugin-google-cloud-functions",
  tag = "0.1.0"
}

description = {
  summary = "Kong plugin for google cloud functions",
  homepage = "http://getkong.org",
  license = "Apache 2.0"
}

dependencies = {
  "lua >= 5.1",
  "lua-cjson",
  "mimetypes",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".google.oauth"]  = "kong/plugins/"..pluginName.."/google/oauth.lua"
  }
}
