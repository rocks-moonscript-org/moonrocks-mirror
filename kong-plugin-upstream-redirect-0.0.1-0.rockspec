package = "kong-plugin-upstream-redirect"
version = "0.0.1-0"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/prashanth-unity/kong-plugin-upstream-redirect"
}

description = {
  summary = "A Kong plugin for dynamic upstream URLs based on a request header.",
  license = "Apache 2.0"
}

dependencies = {
  "lua >= 5.1",
  "net-url >= 0.9-1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.upstream-redirect.access"] = "kong/plugins/upstream-redirect/access.lua",
    ["kong.plugins.upstream-redirect.handler"] = "kong/plugins/upstream-redirect/handler.lua",
    ["kong.plugins.upstream-redirect.schema"] = "kong/plugins/upstream-redirect/schema.lua",
  }
}
