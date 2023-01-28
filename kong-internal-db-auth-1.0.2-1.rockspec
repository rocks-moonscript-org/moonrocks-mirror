package = "kong-internal-db-auth"
version = "1.0.2-1"
source = {
   url = "git+https://github.com/wisdom-oss/kong-internal-db-auth.git"
}
description = {
   homepage = "https://github.com/wisdom-oss/kong-internal-db-auth",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugin.kong-internal-db-auth.handler"] = "kong/plugin/kong-internal-db-auth/handler.lua",
      ["kong.plugin.kong-internal-db-auth.schema"] = "kong/plugin/kong-internal-db-auth/schema.lua"
   }
}
