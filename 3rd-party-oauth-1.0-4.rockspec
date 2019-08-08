package = "3rd-party-oauth"
version = "1.0-4"
source = {
  url = "git://github.com/akarmazyn/3rd-party-oauth"
}
description = {
  summary = "A Kong plugin, that let you use an external Oauth 2.0 provider to protect your API",
  license = "Apache 2.0"
}
dependencies = {
  "lua >= 5.1",
  "luacrypto >= 0.3"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.3rd-party-oauth.access"] = "src/access.lua",
    ["kong.plugins.3rd-party-oauth.handler"] = "src/handler.lua",
    ["kong.plugins.3rd-party-oauth.schema"] = "src/schema.lua"
  }
}
