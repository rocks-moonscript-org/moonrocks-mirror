package = "kong-plugin-zipkin-tracing"
version = "1.0.0-1"

source = {
  url = "git+https://git@gitlab.com/deinn/proyectos/servipag/zipkin-tracing.git",
  branch = "master"
}

description = {
  summary = "This plugin allows Kong to propagate Zipkin headers and report to a Zipkin server",
  homepage = "https://gitlab.com/deinn/proyectos/servipag/zipkin-tracing",
  license = "Apache 2.0",
}

dependencies = {
  "lua >= 5.1",
  "lua-cjson",
  "lua-resty-http >= 0.11",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.zipkin-tracing.handler"] = "kong/plugins/zipkin-tracing/handler.lua",
    ["kong.plugins.zipkin-tracing.reporter"] = "kong/plugins/zipkin-tracing/reporter.lua",
    ["kong.plugins.zipkin-tracing.span"] = "kong/plugins/zipkin-tracing/span.lua",
    ["kong.plugins.zipkin-tracing.tracing_headers"] = "kong/plugins/zipkin-tracing/tracing_headers.lua",
    ["kong.plugins.zipkin-tracing.schema"] = "kong/plugins/zipkin-tracing/schema.lua",
    ["kong.plugins.zipkin-tracing.request_tags"] = "kong/plugins/zipkin-tracing/request_tags.lua",
  },
}
