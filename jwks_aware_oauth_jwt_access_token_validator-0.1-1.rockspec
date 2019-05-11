package = "jwks_aware_oauth_jwt_access_token_validator"
version = "0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://bitbucket.org/gt_tech/jwks_aware_oauth_jwt_access_token_validator",
  tag = "v0.1-1"
}
description = {
  summary = "Kong JWKS aware JWT authentication Integration",
  license = "Apache 2.0",
  homepage = "https://bitbucket.org/gt_tech/jwks_aware_oauth_jwt_access_token_validator",
  license = "Apache License 2.0",
  maintainer = "GT Tech",
  detailed = [[
      Kong JWKS aware JWT authentication Integration.
  ]],
}
dependencies = {
  "kong-oidc ~> 1.1.0"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.jwks_aware_oauth_jwt_access_token_validator.schema"] = "kong/plugins/jwks_aware_oauth_jwt_access_token_validator/schema.lua",
    ["kong.plugins.jwks_aware_oauth_jwt_access_token_validator.handler"] = "kong/plugins/jwks_aware_oauth_jwt_access_token_validator/handler.lua",
    ["kong.plugins.jwks_aware_oauth_jwt_access_token_validator.authorization"] = "kong/plugins/jwks_aware_oauth_jwt_access_token_validator/authorization.lua",
    ["kong.plugins.jwks_aware_oauth_jwt_access_token_validator.resty-lib.openidc"] = "kong/plugins/jwks_aware_oauth_jwt_access_token_validator/resty-lib/openidc.lua"
  },
}
