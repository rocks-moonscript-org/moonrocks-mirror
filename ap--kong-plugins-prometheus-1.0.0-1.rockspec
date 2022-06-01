local package_version = "1.0.0"
local rockspec_revision = "1"

package = "ap--kong-plugins-prometheus"
version = package_version.."-"..rockspec_revision
source = {
   url = "git://github.com/adeo/ap--kong-plugins-prometheus",
   tag = package_version
}
description = {
   summary = "A Kong prometheus custom plugin ",
   detailed = [[
       This plugin based on https://github.com/Kong/kong/tree/master/kong/plugins/prometheus.
       It has additional changes in label metrics and default buckets.
   ]],
   homepage = "https://github.com/adeo/ap--kong-plugins-prometheus",
   license = "MIT"
}
dependencies = {
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.ap--kong-plugins-prometheus.api"] = "kong/plugins/ap--kong-plugins-prometheus/api.lua",
      ["kong.plugins.ap--kong-plugins-prometheus.exporter"] = "kong/plugins/ap--kong-plugins-prometheus/exporter.lua",
      ["kong.plugins.ap--kong-plugins-prometheus.handler"] = "kong/plugins/ap--kong-plugins-prometheus/handler.lua",
      ["kong.plugins.ap--kong-plugins-prometheus.prometheus"] = "kong/plugins/ap--kong-plugins-prometheus/prometheus.lua",
      ["kong.plugins.ap--kong-plugins-prometheus.schema"] = "kong/plugins/ap--kong-plugins-prometheus/schema.lua",
      ["kong.plugins.ap--kong-plugins-prometheus.serve"] = "kong/plugins/ap--kong-plugins-prometheus/serve.lua",
      ["kong.plugins.ap--kong-plugins-prometheus.status_api"] = "kong/plugins/ap--kong-plugins-prometheus/status_api.lua"
   }
}
