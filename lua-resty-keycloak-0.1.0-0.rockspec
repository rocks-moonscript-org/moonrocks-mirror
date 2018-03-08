package = "lua-resty-keycloak"
version = "0.1.0-0"
source = {
    url = "https://github.com/nokia/kong-oidc",
    tag = "v0.1.0-0"
}
description = {
    summary = "",
    detailed = "",
    homepage = "",
    license = "Apache 2.0"
}
dependencies = {
    "lua-resty-openidc ~> 1.2.3-1"
}
build = {
    type = "builtin",
    modules = {
    ["resty.keycloak.authz"] = "lib/resty/keycloak/authz.lua",
    ["resty.keycloak.oidc"] = "lib/resty/keycloak/oidc.lua",
    ["resty.keycloak.version"] = "lib/resty/keycloak/version.lua", 
    ["resty.keycloak.api.request"] = "lib/resty/keycloak/api/request.lua",
    ["resty.keycloak.api.protection"] = "lib/resty/keycloak/api/protection.lua",
    ["resty.keycloak.api.entitlement"] = "lib/resty/keycloak/api/entitlement.lua",
    ["resty.keycloak.api.resourceset"] = "lib/resty/keycloak/api/resourceset.lua",
    
    ["resty.keycloak.common.utils"] = "lib/resty/keycloak/common/utils.lua",
    }
}
