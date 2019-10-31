package = "kong-oidc-adfs"
version = "0.4-0"
source = {
    url = "git://github.com/philbarr/kong-oidc-adfs",
    tag = "v0.4",
    dir = "kong-oidc-adfs"
}
description = {
    summary = "A Kong plugin for implementing the OpenID Connect Relying Party (RP) functionality, with additional functionality for ADFS",
    detailed = [[
        kong-oidc is a Kong plugin for implementing the OpenID Connect Relying Party.

        When used as an OpenID Connect Relying Party it authenticates users against an OpenID Connect Provider using OpenID Connect Discovery and the Basic Client Profile (i.e. the Authorization Code flow).

        It maintains sessions for authenticated users by leveraging lua-resty-session thus offering a configurable choice between storing the session state in a client-side browser cookie or use in of the server-side storage mechanisms shared-memory|memcache|redis.

        It supports server-wide caching of resolved Discovery documents and validated Access Tokens.

        It can be used as a reverse proxy terminating OAuth/OpenID Connect in front of an origin server so that the origin server/services can be protected with the relevant standards without implementing those on the server itself.

        Further, ADFS specific settings have been added to support some ADFS quirks.
    ]],
    homepage = "https://github.com/philbarr/kong-oidc-adfs",
    license = "Apache 2.0"
}
dependencies = {
    "lua-resty-openidc ~> 1.7.2"
}
build = {
    type = "builtin",
    modules = {
    ["kong.plugins.oidc-adfs.filter"] = "kong/plugins/oidc-adfs/filter.lua",
    ["kong.plugins.oidc-adfs.handler"] = "kong/plugins/oidc-adfs/handler.lua",
    ["kong.plugins.oidc-adfs.schema"] = "kong/plugins/oidc-adfs/schema.lua",
    ["kong.plugins.oidc-adfs.session"] = "kong/plugins/oidc-adfs/session.lua",
    ["kong.plugins.oidc-adfs.utils"] = "kong/plugins/oidc-adfs/utils.lua"
    }
}
