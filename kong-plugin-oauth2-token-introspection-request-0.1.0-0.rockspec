package = "kong-plugin-oauth2-token-introspection-request"

version = "0.1.0-0"

supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/yoophi/kong-plugin-oauth2-token-introspection-request",
  tag = "0.1.0-0"
}

description = {
  summary = "A Kong plugin that make POST oauth2 token introspection request before proxying the original request.",
  license = "MIT"
}

dependencies = {
  "base64 >= 1.5"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.oauth2-token-introspection-request.access"] = "src/access.lua",
    ["kong.plugins.oauth2-token-introspection-request.handler"] = "src/handler.lua",
    ["kong.plugins.oauth2-token-introspection-request.schema"] = "src/schema.lua"
  }
}
