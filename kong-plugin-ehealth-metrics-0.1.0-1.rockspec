package = "kong-plugin-ehealth-metrics"

version = "0.1.0-1"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git+ssh://git@github.com:edenlabllc/kong-plugins-ehealth.git",
  tag = "metrics-0.1.0"
}

description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "http://getkong.org",
  license = "MIT"
}

dependencies = {}

local pluginName = "ehealth-metrics"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua"
  }
}
