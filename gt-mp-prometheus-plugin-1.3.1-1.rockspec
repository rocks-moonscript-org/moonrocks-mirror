package = "gt-mp-prometheus-plugin"
version = "1.3.1-1"

source = {
  url = "git://github.com/Kong/kong-plugin-prometheus",
  tag = "1.3.0"
}

supported_platforms = {"linux", "macosx"}
description = {
  summary = "Prometheus metrics for Kong and upstreams configured in Kong",
  license = "Apache 2.0",
}

dependencies = {
  "lua-resty-counter >= 0.2.0",
  "kong-redis-cluster == 1.1-0",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.mp-prometheus.api"] = "kong/plugins/mp-prometheus/api.lua",
    ["kong.plugins.mp-prometheus.status_api"] = "kong/plugins/mp-prometheus/status_api.lua",
    ["kong.plugins.mp-prometheus.exporter"] = "kong/plugins/mp-prometheus/exporter.lua",
    ["kong.plugins.mp-prometheus.enterprise.exporter"] = "kong/plugins/mp-prometheus/enterprise/exporter.lua",
    ["kong.plugins.mp-prometheus.handler"] = "kong/plugins/mp-prometheus/handler.lua",
    ["kong.plugins.mp-prometheus.prometheus"] = "kong/plugins/mp-prometheus/prometheus.lua",
    ["kong.plugins.mp-prometheus.serve"] = "kong/plugins/mp-prometheus/serve.lua",
    ["kong.plugins.mp-prometheus.schema"] = "kong/plugins/mp-prometheus/schema.lua",
  }
}
