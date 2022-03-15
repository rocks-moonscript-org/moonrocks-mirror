package = "dtracing"
version = "1.0.0-3"

source = {
  url = "git+https://git@gitlab.com/skilledboy/dtracing.git",
  branch = "master"
}

description = {
  summary = "This plugin allows Kong to propagate Zipkin headers and report to a Zipkin server",
  homepage = "https://gitlab.com/skilledboy/dtracing",
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
    ["kong.plugins.dtracing.handler"] = "kong/plugins/dtracing/handler.lua",
    ["kong.plugins.dtracing.reporter"] = "kong/plugins/dtracing/reporter.lua",
    ["kong.plugins.dtracing.span"] = "kong/plugins/dtracing/span.lua",
    ["kong.plugins.dtracing.tracing_headers"] = "kong/plugins/dtracing/tracing_headers.lua",
    ["kong.plugins.dtracing.schema"] = "kong/plugins/dtracing/schema.lua",
    ["kong.plugins.dtracing.request_tags"] = "kong/plugins/dtracing/request_tags.lua",
  },
}
