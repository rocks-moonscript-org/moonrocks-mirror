package = "keycloack-rbac"
version = "1.1.0-0"
source = {
    url = "git://github.com/kelvinwierks/keycloak-rbac",
    tag = "v1.1.0",
    dir = "keycloak-rbac"
}
description = {
    summary = "A Kong plugin for implementing RBAC functionality within the keycloak JWT",
    detailed = [[
        keycloak-rbac is used to allow JWT tokens to access routes/services based on the client roles built in keycloak
    ]],
    homepage = "https://github.com/kelvinwierks/keycloak-rbac",
    license = "Apache 2.0"
}
dependencies = {
    
}
build = {
    type = "builtin",
    modules = {
    ["kong.plugins.keycloak-rbac.handler"] = "kong/plugins/keycloak-rbac/handler.lua",
    ["kong.plugins.keycloak-rbac.schema"] = "kong/plugins/keycloak-rbac/schema.lua",

    }
}