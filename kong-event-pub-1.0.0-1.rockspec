package = "kong-event-pub"

version = "1.0.0-1"

supported_platforms = {"linux"}

source = {
  url = "git+https://github.com/Platformatory/kong-event-pub",
  tag = "main"
}

description = {
  summary = "Turn Kong API logs into an event solurce",
  license = "MIT",
  maintainer = "Pavan Keshavamurthy <pavan@platformatory.com>"
}

dependencies = {
  "lua-resty-kafka = 0.22-0",
  "lua-resty-jit-uuid = 0.0.7-2",
  "lua-resty-openssl = 0.8.21-1",
  "uuid >= 0.3-1",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-event-pub.handler"] = "kong/plugins/kong-event-pub/handler.lua",
    ["kong.plugins.kong-event-pub.schema"] = "kong/plugins/kong-event-pub/schema.lua",
  }
}
