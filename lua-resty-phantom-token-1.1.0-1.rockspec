package = "lua-resty-phantom-token"
version = "1.1.0-1"
source = {
  url = "git://github.com/curityio/lua-nginx-phantom-token-plugin",
  tag = "v1.1.0"
}
description = {
  summary = "A Lua plugin used during API requests to exchange an opaque reference token for a JWT access token",
  homepage = "https://curity.io/product/token-service/?=tabgroup=1?tab=microservices",
  license = "Apache 2.0",
  detailed = [[
        The Curity Phantom Token plugin is a Lua library used to forward JWT access tokens to APIs.
        It can be used with NGINX based systems with the Lua module enabled, such as OpenResty.
        The Identity Server issues opaque tokens to internet clients and stores the JWT access tokens.
        This is a privacy preserving pattern to ensure that no sensitive token related information is revealed.
        During API requests the plugin introspects the opaque token to get the JWT.
        The JWT access token is then forwarded to the API using the HTTP Authorization header.
        All of this keeps plumbing out of APIs, so that they are able to use simple authorization code.
  ]],
  summary = "A Lua plugin to receive incoming opaque tokens and forward JWT access tokens to APIs"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["resty.phantom-token"] = "plugin/phantom-token-plugin.lua"
  }
}