package = "kong-internal-db-auth"
version = "2.1.1-1"
source = {
   url = "git+https://github.com/captainsuchard/kong-authentik-oauth-plugin.git",
   branch = "main"
}
description = {
   homepage = "https://github.com/captainsuchard/kong-authentik-oauth-plugin",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-internal-db-auth.handler"] = "kong/plugins/kong-internal-db-auth/handler.lua",
      ["kong.plugins.kong-internal-db-auth.schema"] = "kong/plugins/kong-internal-db-auth/schema.lua"
   }
}
