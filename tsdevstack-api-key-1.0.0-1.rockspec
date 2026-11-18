rockspec_format = "3.0"
package = "tsdevstack-api-key"
version = "1.0.0-1"
source = {
  url = "git+https://github.com/tsdevstack/kong-plugins.git",
  tag = "v1.0.0",
}
description = {
  summary = "API keys checked against Redis, with per-key limits per time window",
  detailed = "A Kong plugin from tsdevstack. Tested with Kong 3.9.4 (open source).",
  homepage = "https://github.com/tsdevstack/kong-plugins",
  license = "Apache-2.0",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.tsdevstack-api-key.handler"] = "kong/plugins/tsdevstack-api-key/handler.lua",
    ["kong.plugins.tsdevstack-api-key.redis"] = "kong/plugins/tsdevstack-api-key/redis.lua",
    ["kong.plugins.tsdevstack-api-key.schema"] = "kong/plugins/tsdevstack-api-key/schema.lua",
    ["kong.plugins.tsdevstack-api-key.script"] = "kong/plugins/tsdevstack-api-key/script.lua",
    ["kong.plugins.tsdevstack-api-key.windows"] = "kong/plugins/tsdevstack-api-key/windows.lua",
  },
}
