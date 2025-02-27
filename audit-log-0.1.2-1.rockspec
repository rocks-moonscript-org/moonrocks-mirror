package = "audit-log"
version = "0.1.2-1"


supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/mykaarma/kong-audit-log",
  tag = "0.1.2",
}

description = {
  summary = "audit-log is a custom plugin made at MyKaarma to generate audit logs whenever a consumer/credential/rate-limit is created/updated/deleted in Kong",
  homepage = "https://github.com/mykaarma/kong-audit-log",
  license = "AGPL-3"
}

dependencies = {
  "lua >= 5.1"
}

local pluginName = "audit-log"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".daos"] = "kong/plugins/"..pluginName.."/daos.lua",
    ["kong.plugins."..pluginName..".api"] = "kong/plugins/"..pluginName.."/api.lua",
    ["kong.plugins."..pluginName..".migrations.000_base_audit_log"] = "kong/plugins/"..pluginName.."/migrations/000_base_audit_log.lua",
    ["kong.plugins."..pluginName..".migrations.init"] = "kong/plugins/"..pluginName.."/migrations/init.lua",
  }
}
