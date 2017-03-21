package = "kong-plugin-upstream-auth-basic"
version = "1.0.0-0"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/revolsys/kong-plugin-upstream-auth-basic",
  tag = "1.0.0"
}
description = {
  summary = "Kong Plugin for Upstream HTTP Basic Authentication",
  license = "Apache-2.0",
  homepage = "https://revolsys.github.io/kong-plugin-upstream-auth-basic/"
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.upstream-auth-basic.handler"] = "kong/plugins/upstream-auth-basic/handler.lua",
    ["kong.plugins.upstream-auth-basic.schema"] = "kong/plugins/upstream-auth-basic/schema.lua",
  }
}
