package = "kong-plugin-custom-rate-limit"
version = "0.1.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-custom-rate-limit.git",
  tag = "0.1.0"
}
description = {
  summary = "Custom rate limit plugin for Kong API gateway.",
  homepage = "https://github.com/emartech/kong-plugin-custom-rate-limit",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1",
  "date 2.1.2-1",
  "classic 0.1.0-1",
  "kong-lib-logger >= 0.3.0-1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.custom-rate-limit.handler"] = "kong/plugins/custom-rate-limit/handler.lua",
    ["kong.plugins.custom-rate-limit.schema"] = "kong/plugins/custom-rate-limit/schema.lua",
    ["kong.plugins.custom-rate-limit.rate_limit"] = "kong/plugins/custom-rate-limit/rate_limit.lua",
    ["kong.plugins.custom-rate-limit.rate_limit_pool"] = "kong/plugins/custom-rate-limit/rate_limit_pool.lua",
    ["kong.plugins.custom-rate-limit.redis_factory"] = "kong/plugins/custom-rate-limit/redis_factory.lua",
  }
}
