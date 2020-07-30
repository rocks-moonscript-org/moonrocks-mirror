package = "kong-plugin-keycloak-auth-request"

version = "0.1.0-0"

supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/yoophi/kong-plugin-keycloak-auth-request",
  tag = "0.1.0-0"
}

description = {
  summary = "A Kong plugin that make POST keycloak token introspect request before proxying the original request.",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.keycloak-auth-request.access"] = "src/access.lua",
    ["kong.plugins.keycloak-auth-request.handler"] = "src/handler.lua",
    ["kong.plugins.keycloak-auth-request.schema"] = "src/schema.lua"
  }
}
