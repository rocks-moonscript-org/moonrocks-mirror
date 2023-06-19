package = "kong-keycloak"
version = "1.0.0-2"
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
    ["kong.plugins.keycloak.constants.errors"] = "kong/plugins/keycloak/constants/errors.lua",
    ["kong.plugins.keycloak.handler"] = "kong/plugins/keycloak/handler.lua",
    ["kong.plugins.keycloak.interceptors.add_user"] = "kong/plugins/keycloak/interceptors/add_user.lua",
    ["kong.plugins.keycloak.interceptors.delete_user"] = "kong/plugins/keycloak/interceptors/delete_user.lua",
    ["kong.plugins.keycloak.interceptors.modify_user"] = "kong/plugins/keycloak/interceptors/modify_user.lua",
    ["kong.plugins.keycloak.schema"] = "kong/plugins/keycloak/schema.lua",
    ["kong.plugins.keycloak.schemas.add_user"] = "kong/plugins/keycloak/schemas/add_user.lua",
    ["kong.plugins.keycloak.schemas.delete_user"] = "kong/plugins/keycloak/schemas/delete_user.lua",
    ["kong.plugins.keycloak.schemas.modify_user"] = "kong/plugins/keycloak/schemas/modify_user.lua",
    ["kong.plugins.keycloak.utils.regex"] = "kong/plugins/keycloak/utils/regex.lua"
   }
}
