package = "kong-kafka-log-plus"

version = "1.0.0-1"

supported_platforms = {"linux"}

source = {
  url = "git+https://github.com/Platformatory/kong-kafka-log-plus",
  tag = "main"
}

description = {
  summary = "Demonstrate API composition with Kong",
  license = "MIT",
  maintainer = "Pavan Keshavamurthy <pavan@platformatory.com>"
}

dependencies = {
  "lua-resty-kafka >= 0.20-0",
  "uuid >= 0.3-1",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-kafka-log-plus.handler"] = "kong/plugins/kong-kafka-log-plus/handler.lua",
    ["kong.plugins.kong-kafka-log-plus.schema"] = "kong/plugins/kong-kafka-log-plus/schema.lua",
  }
}
