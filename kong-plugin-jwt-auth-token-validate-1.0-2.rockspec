package = "kong-plugin-jwt-auth-token-validate"
version = "1.0-2"

source = {
   url = "git://github.com/bluekiri/kong-plugin-jwt-auth-token-validate",
   tag = "v1.0"
}
description = {
   summary = "A Kong plugin to validate JWT access tokens issuer and audience claim values",
   homepage = "https://github.com/bluekiri/kong-plugin-jwt-auth-token-validate",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.jwt-auth-token-validate.handler"] = "kong/plugins/jwt-auth-token-validate/handler.lua",
      ["kong.plugins.jwt-auth-token-validate.schema"] = "kong/plugins/jwt-auth-token-validate/schema.lua"
   }
}
