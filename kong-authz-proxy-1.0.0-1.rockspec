package = "kong-authz-proxy"

version = "1.0.0-1"

supported_platforms = {"linux"}

source = {
  url = "git+https://github.com/Platformatory/kong-authz-proxy.git",
  tag = "main"
}

description = {
  summary = "Generic Authz Proxy that uses encoded tokens with authorization rules",
  license = "MIT",
  maintainer = "Pavan Keshavamurthy <pavan@platformatory.com>"
}

dependencies = {
  "openssl = 0.9.0-0",
  "lua-resty-openssl = 1.2.0-1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-authz-proxy.handler"] = "kong/plugins/kong-authz-proxy/handler.lua",
    ["kong.plugins.kong-authz-proxy.schema"] = "kong/plugins/kong-authz-proxy/schema.lua",
  }
}
