package = "kong-plugin-wsse"
version = "4.1.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-wsse.git",
  tag = "4.1.1"
}
description = {
  summary = "WSSE auth plugin for Kong API gateway.",
  homepage = "https://github.com/emartech/kong-plugin-wsse",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "date 2.1.2-1",
  "lbase64 20120820-1",
  "fly-bgcrypto-sha == 0.0.1-1",
  "classic 0.1.0-1",
  "kong-lib-logger >= 0.3.0-1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.wsse.access"] = "kong/plugins/wsse/access.lua",
    ["kong.plugins.wsse.api"] = "kong/plugins/wsse/api.lua",
    ["kong.plugins.wsse.cache_warmer"] = "kong/plugins/wsse/cache_warmer.lua",
    ["kong.plugins.wsse.consumer_db"] = "kong/plugins/wsse/consumer_db.lua",
    ["kong.plugins.wsse.crypt"] = "kong/plugins/wsse/crypt.lua",
    ["kong.plugins.wsse.daos"] = "kong/plugins/wsse/daos.lua",
    ["kong.plugins.wsse.encryption_key_path_retriever"] = "kong/plugins/wsse/encryption_key_path_retriever.lua",
    ["kong.plugins.wsse.handler"] = "kong/plugins/wsse/handler.lua",
    ["kong.plugins.wsse.init_worker"] = "kong/plugins/wsse/init_worker.lua",
    ["kong.plugins.wsse.key_db"] = "kong/plugins/wsse/key_db.lua",
    ["kong.plugins.wsse.plugin_config"] = "kong/plugins/wsse/plugin_config.lua",
    ["kong.plugins.wsse.schema"] = "kong/plugins/wsse/schema.lua",
    ["kong.plugins.wsse.timeframe_validator"] = "kong/plugins/wsse/timeframe_validator.lua",
    ["kong.plugins.wsse.wsse_lib"] = "kong/plugins/wsse/wsse_lib.lua",
    ["kong.plugins.wsse.migrations.000_base_wsse"] = "kong/plugins/wsse/migrations/000_base_wsse.lua",
    ["kong.plugins.wsse.migrations.001_add_encrypted_secret"] = "kong/plugins/wsse/migrations/001_add_encrypted_secret.lua",
    ["kong.plugins.wsse.migrations.init"] = "kong/plugins/wsse/migrations/init.lua",
  }
}
