package = "kong-plugin-atatus"
version = "2.1.0-1"
source = {
   url = "git+https://github.com/Moesif/kong-plugin-moesif.git"
}
description = {
   summary = "com?language=kong-api-gateway&utm_medium=docs&utm_campaign=partners&utm_source=kong).",
   detailed = [[
This plugin allows you to understand [customer API usage](https://www.atatus.com/features/api-analytics?utm_medium=docs&utm_campaign=partners&utm_source=kong&language=kong-api-gateway) and monetize your APIs with [usage-based billing](https://www.atatus.com/solutions/metered-api-billing?utm_medium=docs&utm_campaign=partners&utm_source=kong&language=kong-api-gateway)
by logging API traffic to [Atatus API Monetization and Analytics](https://www.atatus.com?language=kong-api-gateway&utm_medium=docs&utm_campaign=partners&utm_source=kong). Atatus enables you to:]],
   homepage = "https://github.com/Moesif/kong-plugin-moesif",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.atatus.atatus_gov"] = "kong/plugins/atatus/atatus_gov.lua",
      ["kong.plugins.atatus.atatus_ser"] = "kong/plugins/atatus/atatus_ser.lua",
      ["kong.plugins.atatus.base64"] = "kong/plugins/atatus/base64.lua",
      ["kong.plugins.atatus.client_ip"] = "kong/plugins/atatus/client_ip.lua",
      ["kong.plugins.atatus.connection"] = "kong/plugins/atatus/connection.lua",
      ["kong.plugins.atatus.governance_helpers"] = "kong/plugins/atatus/governance_helpers.lua",
      ["kong.plugins.atatus.handler"] = "kong/plugins/atatus/handler.lua",
      ["kong.plugins.atatus.helpers"] = "kong/plugins/atatus/helpers.lua",
      ["kong.plugins.atatus.lib_deflate"] = "kong/plugins/atatus/lib_deflate.lua",
      ["kong.plugins.atatus.log"] = "kong/plugins/atatus/log.lua",
      ["kong.plugins.atatus.regex_config_helpers"] = "kong/plugins/atatus/regex_config_helpers.lua",
      ["kong.plugins.atatus.schema"] = "kong/plugins/atatus/schema.lua",
      ["kong.plugins.atatus.zzlib"] = "kong/plugins/atatus/zzlib.lua"
   }
}
