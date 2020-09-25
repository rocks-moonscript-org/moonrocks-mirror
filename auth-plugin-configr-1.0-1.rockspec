package = "auth-plugin-configr"
version = "1.0-1"


supported_platforms = {"linux", "macosx"}
source = {
  url = "https://gitea.cloudez.io/victor.franca/auth-plugin-configr",
  tag = "0.1.0"
}

description = {
  summary = "Auth plugin is a plugin used inside Configr to authenticate via our API.",
  homepage = "https://gitea.cloudez.io/victor.franca/auth-plugin-configr",
  license = "MIT"
}

dependencies = {
}

local pluginName = "auth-plugin-configr"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".check_token"] = "kong/plugins/"..pluginName.."/check_token.lua",
  }
}