package = "wisdom-kong-internal-auth-plugin"

version = "1.0.0-0"

supported_platforms = {"linux", "macosx"}

source = {
  url = "https://github.com/wisdom-oss/kong-internal-db-auth.git",
  tag = "1.0.0"
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
    ["kong.plugins.wisdom-kong-internal-auth-plugin.access"] = "src/access.lua",
    ["kong.plugins.wisdom-kong-internal-auth-plugin.handler"] = "src/handler.lua",
    ["kong.plugins.wisdom-kong-internal-auth-plugin.schema"] = "src/schema.lua"
  }
}
