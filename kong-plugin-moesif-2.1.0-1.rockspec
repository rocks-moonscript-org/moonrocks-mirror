package = "kong-plugin-moesif"
version = "2.1.0-1"
source = {
   url = "git+https://github.com/Moesif/kong-plugin-moesif.git"
}
description = {
   summary = "com?language=kong-api-gateway&utm_medium=docs&utm_campaign=partners&utm_source=kong).",
   detailed = [[
This plugin allows you to understand [customer API usage](https://www.moesif.com/features/api-analytics?utm_medium=docs&utm_campaign=partners&utm_source=kong&language=kong-api-gateway) and monetize your APIs with [usage-based billing](https://www.moesif.com/solutions/metered-api-billing?utm_medium=docs&utm_campaign=partners&utm_source=kong&language=kong-api-gateway)
by logging API traffic to [Moesif API Monetization and Analytics](https://www.moesif.com?language=kong-api-gateway&utm_medium=docs&utm_campaign=partners&utm_source=kong). Moesif enables you to:]],
   homepage = "https://github.com/Moesif/kong-plugin-moesif",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.moesif.base64"] = "kong/plugins/moesif/base64.lua",
      ["kong.plugins.moesif.client_ip"] = "kong/plugins/moesif/client_ip.lua",
      ["kong.plugins.moesif.connection"] = "kong/plugins/moesif/connection.lua",
      ["kong.plugins.moesif.governance_helpers"] = "kong/plugins/moesif/governance_helpers.lua",
      ["kong.plugins.moesif.handler"] = "kong/plugins/moesif/handler.lua",
      ["kong.plugins.moesif.helpers"] = "kong/plugins/moesif/helpers.lua",
      ["kong.plugins.moesif.log"] = "kong/plugins/moesif/log.lua",
      ["kong.plugins.moesif.moesif_gov"] = "kong/plugins/moesif/moesif_gov.lua",
      ["kong.plugins.moesif.moesif_ser"] = "kong/plugins/moesif/moesif_ser.lua",
      ["kong.plugins.moesif.regex_config_helpers"] = "kong/plugins/moesif/regex_config_helpers.lua",
      ["kong.plugins.moesif.schema"] = "kong/plugins/moesif/schema.lua",
      ["kong.plugins.moesif.zzlib"] = "kong/plugins/moesif/zzlib.lua"
   }
}
