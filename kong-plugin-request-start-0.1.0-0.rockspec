package = "kong-plugin-request-start"
version = "0.1.0-0"

source = {
  url = "git://github.com/pingnamo/kong-plugin-request-start",
  tag = "0.1.0"
}

supported_platforms = {"linux", "macosx"}
description = {
  summary = "Add X-Request-Start header to requests",
  homepage = "http://github.com/pingnamo/kong-plugin-request-start",
  license = "Apache 2.0"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.request-start.handler"] = "kong/plugins/request-start/handler.lua",
    ["kong.plugins.request-start.schema"] = "kong/plugins/request-start/schema.lua",
  }
}
