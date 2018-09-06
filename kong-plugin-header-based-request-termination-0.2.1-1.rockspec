package = "kong-plugin-header-based-request-termination"
version = "0.2.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-header-based-request-termination.git",
  tag = "0.2.1"
}
description = {
  summary = "Terminate requests based on its headers.",
  homepage = "https://github.com/emartech/kong-plugin-header-based-request-termination",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1",
  "classic 0.1.0-1",
  "kong-lib-logger >= 0.3.0-1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.header-based-request-termination.migrations.postgres"] = "kong/plugins/header-based-request-termination/migrations/postgres.lua",
    ["kong.plugins.header-based-request-termination.migrations.cassandra"] = "kong/plugins/header-based-request-termination/migrations/cassandra.lua",
    ["kong.plugins.header-based-request-termination.access"] = "kong/plugins/header-based-request-termination/access.lua",
    ["kong.plugins.header-based-request-termination.api"] = "kong/plugins/header-based-request-termination/api.lua",
    ["kong.plugins.header-based-request-termination.cache_warmer"] = "kong/plugins/header-based-request-termination/cache_warmer.lua",
    ["kong.plugins.header-based-request-termination.daos"] = "kong/plugins/header-based-request-termination/daos.lua",
    ["kong.plugins.header-based-request-termination.handler"] = "kong/plugins/header-based-request-termination/handler.lua",
    ["kong.plugins.header-based-request-termination.init_worker"] = "kong/plugins/header-based-request-termination/init_worker.lua",
    ["kong.plugins.header-based-request-termination.schema"] = "kong/plugins/header-based-request-termination/schema.lua",
  }
}
