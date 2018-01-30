package = "kong-influxdb"
version = "1.0.0-1"
source = {
  url = "git://github.com/gumtreeuk/kong-influxdb",
  tag = "1.0.0"
}
description = {
  summary = "A plugin for Kong to push metrics to InfluxDB",
  homepage = "https://github.com/gumtreeuk/kong-influxdb",
  license = "Apache 2.0"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.influxdb.handler"] = "src/handler.lua",
    ["kong.plugins.influxdb.schema"] = "src/schema.lua",
    ["kong.plugins.influxdb.buffer"] = "src/buffer.lua",
    ["kong.plugins.influxdb.http"] = "src/http.lua"
  }
}
