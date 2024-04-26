package = "kong-request-allow"

version = "0.1.0-1"

source = {
  url = "git://github.com/ammarnajjar/kong-request-allow",
  tag = "v0.1.0",
}

description = {
  summary = "Kong plugin to allow requests based on trigger key and value pair.",
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-request-allow.handler"] = "src/handler.lua",
    ["kong.plugins.kong-request-allow.schema"] = "src/schema.lua"
  }
}