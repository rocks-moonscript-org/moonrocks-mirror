package = "kong-auth-request-trans"

version = "0.0.0-1"

supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/jogiwithjosh/kong-auth-request-trans",
  tag = "0.0.1"
}

description = {
  summary = "A Kong plugin that make GET auth request before proxying the original.",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-auth-request.access"] = "src/access.lua",
    ["kong.plugins.kong-auth-request.handler"] = "src/handler.lua",
    ["kong.plugins.kong-auth-request.schema"] = "src/schema.lua"
  }
}
