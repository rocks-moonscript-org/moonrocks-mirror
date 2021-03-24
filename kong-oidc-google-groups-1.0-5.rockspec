package = "kong-oidc-google-groups"
version = "1.0-5"
source = {
   url = "git://github.com/newtonx-inc/kong-oidc-google-groups",
   tag = "v1.0-5"
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
    "lua-resty-jwt ~> 0.2.2",
    "base64 >= 1.5",
    "penlight >= 1.7.0",
    "json-lua >= 0.1",
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.oidc-google-groups.filters"] = "kong/plugins/oidc-google-groups/filters.lua",
      ["kong.plugins.oidc-google-groups.access"] = "kong/plugins/oidc-google-groups/access.lua",
      ["kong.plugins.oidc-google-groups.daos"] = "kong/plugins/oidc-google-groups/daos.lua",
      ["kong.plugins.oidc-google-groups.directoryapi"] = "kong/plugins/oidc-google-groups/directoryapi.lua",
      ["kong.plugins.oidc-google-groups.googleoauth"] = "kong/plugins/oidc-google-groups/googleoauth.lua",
      ["kong.plugins.oidc-google-groups.handler"] = "kong/plugins/oidc-google-groups/handler.lua",
      ["kong.plugins.oidc-google-groups.memberships"] = "kong/plugins/oidc-google-groups/memberships.lua",
      ["kong.plugins.oidc-google-groups.schema"] = "kong/plugins/oidc-google-groups/schema.lua",
      ["kong.plugins.oidc-google-groups.utilities"] = "kong/plugins/oidc-google-groups/utilities.lua",
      ["kong.plugins.oidc-google-groups.migrations.000_base_kong_google_auth"] = "kong/plugins/oidc-google-groups/migrations/000_base_kong_google_auth.lua",
      ["kong.plugins.oidc-google-groups.migrations.init"] = "kong/plugins/oidc-google-groups/migrations/init.lua",
   }
}
