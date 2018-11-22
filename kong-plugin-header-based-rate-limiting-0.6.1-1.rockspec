package = "kong-plugin-header-based-rate-limiting"
version = "0.6.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-header-based-rate-limiting.git",
  tag = "0.6.1"
}
description = {
  summary = "Rate limit incoming requests based on its headers.",
  homepage = "https://github.com/emartech/kong-plugin-header-based-rate-limiting",
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
    ["kong.plugins.header-based-rate-limiting.api"] = "kong/plugins/header-based-rate-limiting/api.lua",
    ["kong.plugins.header-based-rate-limiting.daos"] = "kong/plugins/header-based-rate-limiting/daos.lua",
    ["kong.plugins.header-based-rate-limiting.handler"] = "kong/plugins/header-based-rate-limiting/handler.lua",
    ["kong.plugins.header-based-rate-limiting.schema"] = "kong/plugins/header-based-rate-limiting/schema.lua",
    ["kong.plugins.header-based-rate-limiting.access"] = "kong/plugins/header-based-rate-limiting/access.lua",
    ["kong.plugins.header-based-rate-limiting.lookup_key_generator"] = "kong/plugins/header-based-rate-limiting/lookup_key_generator.lua",
    ["kong.plugins.header-based-rate-limiting.key_rank"] = "kong/plugins/header-based-rate-limiting/key_rank.lua",
    ["kong.plugins.header-based-rate-limiting.rate_limit_key"] = "kong/plugins/header-based-rate-limiting/rate_limit_key.lua",
    ["kong.plugins.header-based-rate-limiting.rate_limit_pool"] = "kong/plugins/header-based-rate-limiting/rate_limit_pool.lua",
    ["kong.plugins.header-based-rate-limiting.rate_limit_model"] = "kong/plugins/header-based-rate-limiting/rate_limit_model.lua",
    ["kong.plugins.header-based-rate-limiting.rate_limit_rule"] = "kong/plugins/header-based-rate-limiting/rate_limit_rule.lua",
    ["kong.plugins.header-based-rate-limiting.rate_limit_subject"] = "kong/plugins/header-based-rate-limiting/rate_limit_subject.lua",
    ["kong.plugins.header-based-rate-limiting.redis_factory"] = "kong/plugins/header-based-rate-limiting/redis_factory.lua",
    ["kong.plugins.header-based-rate-limiting.migrations.cassandra"] = "kong/plugins/header-based-rate-limiting/migrations/cassandra.lua",
    ["kong.plugins.header-based-rate-limiting.migrations.postgres"] = "kong/plugins/header-based-rate-limiting/migrations/postgres.lua",
  }
}
