package = "kong-oidc-google-groups"
version = "0.1-1"
source = {
   url = "git://github.com/newtonx-inc/kong-oidc-google-groups",
   tag = "v0.1-1"
}
description = {
   summary = "A Kong plugin for implementing Google OIDC, with additional Google Groups-based authorization",
   detailed = [[
        kong-oidc-google-groups implements Google OpenID Connect (OIDC) protocol for authenticating users via their Google login.

        It maintains sessions for authenticated users by leveraging lua-resty-session, and interacts with the Google Directory API to check for the user's membership to groups to authorize them.

   ]],
   homepage = "https://github.com/newtonx-inc/kong-oidc-google-groups",
   license = "MIT"
}
dependencies = {
    "lua >= 5.1",
    "lua-resty-openidc ~> 1.6.1-1",
    "lua-resty-http >= 0.15",
    "lua-resty-jwt >= 0.2.2",
    "base64 >= 1.5",
    "penlight >= 1.7.0",
    "json-lua >= 0.1",
}
build = {
   type = "builtin",
   modules = {
      access = "access.lua",
      daos = "daos.lua",
      directoryapi = "directoryapi.lua",
      filters = "filters.lua",
      googleoauth = "googleoauth.lua",
      handler = "handler.lua",
      memberships = "memberships.lua",
      schema = "schema.lua",
      utilities = "utilities.lua",
      ["migrations.000_base_kong_google_auth"] = "migrations/000_base_kong_google_auth.lua",
      ["migrations.init"] = "migrations/init.lua",
   }
}
