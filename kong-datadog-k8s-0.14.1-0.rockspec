package = "kong-datadog-k8s"
version = "0.14.1-0"

source = {
   url = "git://github.com/erran/kong-datadog-k8s",
   tag = "0.14.1-0",
}

description = {
   detailed = [[
A fork of the bundled datadog plugin which supports environment variable to get the host configuration.
]],
   homepage = "https://github.com/erran/kong-datadog-k8s",
   license = "MIT"
}

build = {
   type = "builtin",
   modules = {
     ["kong.plugins.datadog-k8s.handler"] = "src/kong/plugins/datadog-k8s/handler.lua",
     ["kong.plugins.datadog-k8s.schema"] = "src/kong/plugins/datadog-k8s/schema.lua",
     ["kong.plugins.datadog-k8s.statsd_logger"] = "src/kong/plugins/datadog-k8s/statsd_logger.lua",
   }
}

dependencies = {
  "lua >= 5.1",
}
