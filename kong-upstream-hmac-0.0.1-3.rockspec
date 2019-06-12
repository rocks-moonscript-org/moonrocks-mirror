package = "kong-upstream-hmac"
version = "0.0.1-3"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/brightwang/kong-upstream-hmac.git",
  tag = "0.0.1-3"
}
description = {
  summary = "Kong Plugin for Upstream HTTP HMAC Authentication",
  license = "Apache-2.0",
  homepage = "https://github.com/brightwang/kong-upstream-hmac"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-upstream-hmac.handler"] = "src/handler.lua",
    ["kong.plugins.kong-upstream-hmac.schema"] = "src/schema.lua",
    ["kong.plugins.kong-upstream-hmac.access"] = "src/access.lua",
  }
}
