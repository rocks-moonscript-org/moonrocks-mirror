package = "as-kong-oidc"
version = "1.4.0-1"
source = {
    url = "git://github.com/aistechspace/kong-oidc",
    tag = "v1.4.0-1",
    dir = "kong-oidc"
}
description = {
    summary = "A Kong plugin for implementing the OpenID Connect Relying Party (RP) functionality",
    detailed = [[
        kong-oidc is a Kong plugin for implementing the OpenID Connect Relying Party.

        When used as an OpenID Connect Relying Party it authenticates users against an OpenID Connect Provider using OpenID Connect Discovery and the Basic Client Profile (i.e. the Authorization Code flow).

        It maintains sessions for authenticated users by leveraging lua-resty-session thus offering a configurable choice between storing the session state in a client-side browser cookie or use in of the server-side storage mechanisms shared-memory|memcache|redis.

        It supports server-wide caching of resolved Discovery documents and validated Access Tokens.

        It can be used as a reverse proxy terminating OAuth/OpenID Connect in front of an origin server so that the origin server/services can be protected with the relevant standards without implementing those on the server itself.
    ]],
    homepage = "https://github.com/aistechspace/kong-oidc",
    license = "Apache 2.0"
}
dependencies = {
    "lua-resty-openidc ~> 1.7.6-3"
}
build = {
    type = "builtin",
    modules = {
    ["kong.plugins.as-oidc.filter"] = "kong/plugins/as-oidc/filter.lua",
    ["kong.plugins.as-oidc.handler"] = "kong/plugins/as-oidc/handler.lua",
    ["kong.plugins.as-oidc.schema"] = "kong/plugins/as-oidc/schema.lua",
    ["kong.plugins.as-oidc.session"] = "kong/plugins/as-oidc/session.lua",
    ["kong.plugins.as-oidc.utils"] = "kong/plugins/as-oidc/utils.lua"
    }
}
