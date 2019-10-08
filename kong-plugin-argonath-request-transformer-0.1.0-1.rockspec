package = "kong-plugin-argonath-request-transformer"
version = "0.1.0-1"

source = {
  url = "git://github.com/tyler-cloud-elements/kong-plugin-request-transformer",
  tag = "v0.1.0"
}

supported_platforms = {"linux", "macosx"}
description = {
  summary = "Cloud Elements Argonath Request Transformer Plugin",
}

dependencies = {
   "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.argonath-request-transformer.migrations.cassandra"] = "kong/plugins/request-transformer/migrations/cassandra.lua",
    ["kong.plugins.argonath-request-transformer.migrations.postgres"] = "kong/plugins/request-transformer/migrations/postgres.lua",
    ["kong.plugins.argonath-request-transformer.migrations.common"] = "kong/plugins/request-transformer/migrations/common.lua",
    ["kong.plugins.argonath-request-transformer.handler"] = "kong/plugins/request-transformer/handler.lua",
    ["kong.plugins.argonath-request-transformer.access"] = "kong/plugins/request-transformer/access.lua",
    ["kong.plugins.argonath-request-transformer.schema"] = "kong/plugins/request-transformer/schema.lua",
  }
}
