package = "kong-oidc-plugin"
version = "1.3.3-0"
source = {
    url = "git+https://github.com/antiantiops/kong-oidc-plugin.git",
    tag = "v1.3.3"
}
description = {
    summary = "A Kong plugin for implementing OpenID Connect Relying Party (RP) functionality for Kong CE / 3.x / 4.x",
    detailed = [[
        kong-oidc-plugin is a Kong plugin for implementing OpenID Connect Relying Party functionality, compatible with modern Kong Gateway (3.x / 4.x).
    ]],
    homepage = "https://github.com/antiantiops/kong-oidc-plugin",
    license = "Apache 2.0"
}
dependencies = {
    "lua-resty-openidc >= 1.7.6"
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.oidc.filter"] = "kong/plugins/oidc/filter.lua",
        ["kong.plugins.oidc.handler"] = "kong/plugins/oidc/handler.lua",
        ["kong.plugins.oidc.schema"] = "kong/plugins/oidc/schema.lua",
        ["kong.plugins.oidc.session"] = "kong/plugins/oidc/session.lua",
        ["kong.plugins.oidc.utils"] = "kong/plugins/oidc/utils.lua"
    }
}
