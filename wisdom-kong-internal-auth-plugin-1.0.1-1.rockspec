package = "wisdom-kong-internal-auth-plugin"

version = "1.0.1-1"

supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/wisdom-oss/kong-internal-db-auth",
  tag = "1.0.1-1"
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
    ["kong.plugins.wisdom-kong-internal-auth-plugin.access"] = "kong/plugins/wisdom-kong-internal-auth-plugin/access.lua",
    ["kong.plugins.wisdom-kong-internal-auth-plugin.handler"] = "kong/plugins/wisdom-kong-internal-auth-plugin/handler.lua",
    ["kong.plugins.wisdom-kong-internal-auth-plugin.schema"] = "kong/plugins/wisdom-kong-internal-auth-plugin/schema.lua"
  }
}
