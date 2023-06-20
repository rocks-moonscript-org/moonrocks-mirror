package = "kong-keycloak"
version = "1.0.0-8"
source = {
  url = "git+ssh://git@github.com/NumericalTechnologies/kong-keycloak.git"
}
description = {
  homepage = "https://github.com/NumericalTechnologies/kong-keycloak",
  license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.keycloak.access"] = "kong/plugins/keycloak/access.lua",
      ["kong.plugins.keycloak.add_user_interceptor"] = "kong/plugins/keycloak/add_user_interceptor.lua",
      ["kong.plugins.keycloak.add_user_schema"] = "kong/plugins/keycloak/add_user_schema.lua",
      ["kong.plugins.keycloak.delete_user_interceptor"] = "kong/plugins/keycloak/delete_user_interceptor.lua",
      ["kong.plugins.keycloak.delete_user_schema"] = "kong/plugins/keycloak/delete_user_schema.lua",
      ["kong.plugins.keycloak.errors_constants"] = "kong/plugins/keycloak/errors_constants.lua",
      ["kong.plugins.keycloak.handler"] = "kong/plugins/keycloak/handler.lua",
      ["kong.plugins.keycloak.modify_user_interceptor"] = "kong/plugins/keycloak/modify_user_interceptor.lua",
      ["kong.plugins.keycloak.modify_user_schema"] = "kong/plugins/keycloak/modify_user_schema.lua",
      ["kong.plugins.keycloak.regex_util"] = "kong/plugins/keycloak/regex_util.lua",
      ["kong.plugins.keycloak.schema"] = "kong/plugins/keycloak/schema.lua"
   }
}
