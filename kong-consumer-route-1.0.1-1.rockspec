package = "kong-consumer-route"
version = "1.0.1-1"
source = {
  url = "git://github.com/videni/kong-consumer-route",
  tag = "1.0.1"
}
description = {
  summary = "A plugin for Kong to associate consumer and route",
  homepage = "https://github.com/videni/kong-consumer-route",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.consumer-route.handler"] = "src/handler.lua",
    ["kong.plugins.consumer-route.daos"] = "src/daos.lua",
    ["kong.plugins.consumer-route.api"] = "src/api.lua",
    ["kong.plugins.consumer-route.schema"] = "src/schema.lua",
    ["kong.plugins.consumer-route.migrations.postgres"] = "src/postgres.lua"
  }
}