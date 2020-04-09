package = "kong-plugin-jwt-keycloak-scope-edit"

version = "1.1.0-1"
-- The version '0.1.0' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "jwt-keycloak-scope-edit"
supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/crovitz/kong-plugin-jwt-keycloak-scope-edit",
  tag = "master",
}
description = {
  summary = "A Kong plugin that will validate tokens issued by keycloak (author: gbbirkisson)",
  homepage = "https://github.com/crovitz/kong-plugin-jwt-keycloak-scope-edit",
  license = "Apache 2.0"
}
dependencies = {
  "lua ~> 5"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.jwt-keycloak.validators.issuers"] = "src/validators/issuers.lua",
    ["kong.plugins.jwt-keycloak.validators.roles"] = "src/validators/roles.lua",
    ["kong.plugins.jwt-keycloak.validators.scope"] = "src/validators/scope.lua",
    ["kong.plugins.jwt-keycloak.handler"] = "src/handler.lua",
    ["kong.plugins.jwt-keycloak.key_conversion"] = "src/key_conversion.lua",
    ["kong.plugins.jwt-keycloak.keycloak_keys"] = "src/keycloak_keys.lua",
    ["kong.plugins.jwt-keycloak.schema"]  = "src/schema.lua",
  }
}