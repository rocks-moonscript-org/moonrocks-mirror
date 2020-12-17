package = "kong-plugin-skywalking"

version = "0.3.1-0"

local pluginName = "skywalking"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/heshang233/kong-plugin-skywalking/",
  tag = "v0.3.1"
}

description = {
  summary = "The Nginx Lua agent for Apache SkyWalking kong-plugin",
  homepage = "https://github.com/heshang233/kong-plugin-skywalking",
  license = "Apache 2.0"
}

dependencies = {
   "skywalking-nginx-lua = 0.3-0"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".client"] = "kong/plugins/"..pluginName.."/client.lua",
    ["kong.plugins."..pluginName..".tracer"] = "kong/plugins/"..pluginName.."/tracer.lua",
  }
}