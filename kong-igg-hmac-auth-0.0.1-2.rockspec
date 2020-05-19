package = "kong-igg-hmac-auth"
version = "0.0.1-2"
supported_platforms = {"linux", "macosx"}
source = {
  url = "https://git.skyunion.net/liangwang01/igg-hmac-auth.git",
  tag = "0.0.1-2"
}
description = {
  summary = "Kong Plugin for IGG HTTP HMAC Authentication",
  license = "Apache-2.0",
  homepage = "https://git.skyunion.net/liangwang01/igg-hmac-auth.git"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-igg-hmac-auth.handler"] = "handler.lua",
    ["kong.plugins.kong-igg-hmac-auth.schema"] = "schema.lua",
    ["kong.plugins.kong-igg-hmac-auth.access"] = "access.lua",
  }
}
