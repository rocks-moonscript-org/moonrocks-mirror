package = "audit-log"
version = "0.1.1-2"


supported_platforms = {"linux", "macosx"}
source = {
  url = "https://github.com/mykaarma/kong-audit-log/archive/refs/tags/0.1.1-RC.zip",
  tag = "0.1.1-RC"
}

description = {
  summary = "audit-log is a custom plugin made at MyKaarma to generate audit logs whenever a consumer/credential/rate-limit is created/updated/deleted in Kong",
  homepage = "https://github.com/mykaarma/kong-audit-log",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

local pluginName = "audit-log"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong-audit-log-0.1.1-RC/kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong-audit-log-0.1.1-RC/kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".daos"] = "kong-audit-log-0.1.1-RC/kong/plugins/"..pluginName.."/daos.lua",
    ["kong.plugins."..pluginName..".api"] = "kong-audit-log-0.1.1-RC/kong/plugins/"..pluginName.."/api.lua",
  }
}