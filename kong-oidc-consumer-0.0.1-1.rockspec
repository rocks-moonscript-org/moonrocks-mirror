package = "kong-oidc-consumer"
version = "0.0.1-1"
source = {
    url = "git://github.com/vl4d/kong-oidc-consumer",
    tag = "v0.0.1",
    dir = "kong-oidc-consumer"
}
description = {
    summary = "A Kong plugin for adding/linking consumers to the email response within userInfo returned by the kong-oidc project",
    detailed = [[
        kong-oidc-consumer is a Kong sister plugin for adding or linking consumer based on email (username) from userInfo.

        It is based on response of kong-oidc luarock which is also a kong plugin used for implementing the OpenID Connect Relying Party.

        the kong-oidc luarock can be found here: (https://github.com/nokia/kong-oidc)

        When used as an OpenID Connect Relying Party it authenticates users against an OpenID Connect Provider using OpenID Connect Discovery and the Basic Client Profile (i.e. the Authorization Code flow).

        It maintains sessions for authenticated users by leveraging lua-resty-session thus offering a configurable choice between storing the session state in a client-side browser cookie or use in of the server-side storage mechanisms shared-memory|memcache|redis.

        It supports server-wide caching of resolved Discovery documents and validated Access Tokens.

        It can be used as a reverse proxy terminating OAuth/OpenID Connect in front of an origin server so that the origin server/services can be protected with the relevant standards without implementing those on the server itself.
    ]],
    homepage = "https://github.com/vl4d/kong-oidc-consumer",
    license = "Apache 2.0"
}
dependencies = {
}
build = {
    type = "builtin",
    modules = {
    ["kong.plugins.oidc-consumer.handler"] = "kong/plugins/oidc-consumer/handler.lua",
    ["kong.plugins.oidc-consumer.schema"] = "kong/plugins/oidc-consumer/schema.lua",
    ["kong.plugins.oidc-consumer.utils"] = "kong/plugins/oidc-consumer/utils.lua"
    }
}
