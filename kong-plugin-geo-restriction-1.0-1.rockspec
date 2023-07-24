package = "kong-plugin-geo-restriction"
version = "1.0-1" 
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/alrls/kong-plugin-geo-restriction",
}
description = {
  summary = "A Kong plugin that restricts access by location",
  license = "MIT"
}
dependencies = {
  'lua-geoip >= 0.2-1'
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.geo-restriction.handler"] = "geo-restriction/handler.lua",
    ["kong.plugins.geo-restriction.schema"]  = "geo-restriction/schema.lua"
  }
}