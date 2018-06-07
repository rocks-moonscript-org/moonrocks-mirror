package = "kong-plugin-wsse"
version = "1.0.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-wsse.git",
  tag = "1.0.0"
}
description = {
  summary = "WSSE auth plugin for Kong API gateway.",
  homepage = "https://github.com/emartech/kong-plugin-wsse",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "date 2.1.2-1",
  "inspect 3.1.1-0",
  "lbase64 20120820-1",
  "sha1 0.5-1",
  "uuid 0.2-1",
  "classic 0.1.0-1",
  "kong-lib-logger >= 0.3.0-1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.wsse.api"] = "kong/plugins/wsse/api.lua",
    ["kong.plugins.wsse.consumer_db"] = "kong/plugins/wsse/consumer_db.lua",
    ["kong.plugins.wsse.daos"] = "kong/plugins/wsse/daos.lua",
    ["kong.plugins.wsse.handler"] = "kong/plugins/wsse/handler.lua",
    ["kong.plugins.wsse.key_db"] = "kong/plugins/wsse/key_db.lua",
    ["kong.plugins.wsse.schema"] = "kong/plugins/wsse/schema.lua",
    ["kong.plugins.wsse.timeframe_validator"] = "kong/plugins/wsse/timeframe_validator.lua",
    ["kong.plugins.wsse.wsse_lib"] = "kong/plugins/wsse/wsse_lib.lua",
    ["kong.plugins.wsse.migrations.cassandra"] = "kong/plugins/wsse/migrations/cassandra.lua",
    ["kong.plugins.wsse.migrations.postgres"] = "kong/plugins/wsse/migrations/postgres.lua"
  }
}
