package = "oauth-jwks-validator"
version = "0.1-3"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/jhonatanTeixeira/kong-oauth-jwks-validator",
  tag = "v0.1-3"
}
description = {
  summary = "Kong Oauth JWKS validator",
  license = "Apache 2.0",
  homepage = "https://github.com/jhonatanTeixeira/kong-oauth-jwks-validator",
  license = "Apache License 2.0",
  maintainer = "GT Tech, Jhonatan Teixeira",
  detailed = [[
      Kong plugin to validate JWT using IDPs provided JWKS (Json Web Token Keysets) 
  ]],
}
dependencies = {
  "kong-oidc ~> 1.1.0"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.oauth-jwks-validator.schema"] = "kong/plugins/oauth-jwks-validator/schema.lua",
    ["kong.plugins.oauth-jwks-validator.handler"] = "kong/plugins/oauth-jwks-validator/handler.lua",
    ["kong.plugins.oauth-jwks-validator.authorization"] = "kong/plugins/oauth-jwks-validator/authorization.lua",
    ["kong.plugins.oauth-jwks-validator.resty-lib.openidc"] = "kong/plugins/oauth-jwks-validator/resty-lib/openidc.lua"
  },
}
