package = "oauth-jwks-validator"
version = "0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "https://github.com/jhonatanTeixeira/kong-oauth-jwks-validator.git",
  tag = "v0.1"
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
    ["kong.plugins.oauth_jwks_validator.schema"] = "kong/plugins/oauth_jwks_validator/schema.lua",
    ["kong.plugins.oauth_jwks_validator.handler"] = "kong/plugins/oauth_jwks_validator/handler.lua",
    ["kong.plugins.oauth_jwks_validator.authorization"] = "kong/plugins/oauth_jwks_validator/authorization.lua",
    ["kong.plugins.oauth_jwks_validator.resty-lib.openidc"] = "kong/plugins/oauth_jwks_validator/resty-lib/openidc.lua"
  },
}
