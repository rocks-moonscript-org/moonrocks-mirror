package = "kong-plugin-escher"
version = "2.3.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-escher.git",
  tag = "2.3.0"
}
description = {
  summary = "Escher auth plugin for Kong API gateway.",
  homepage = "https://github.com/emartech/kong-plugin-escher",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "date 2.1.2-1",
  "classic 0.1.0-1",
  "escher 0.2-17",
  "kong-lib-logger >= 0.3.0-1",
  "lua-easy-crypto 1.0.0"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.escher.api"] = "kong/plugins/escher/api.lua",
    ["kong.plugins.escher.cache_warmer"] = "kong/plugins/escher/cache_warmer.lua",
    ["kong.plugins.escher.consumer_db"] = "kong/plugins/escher/consumer_db.lua",
    ["kong.plugins.escher.crypt"] = "kong/plugins/escher/crypt.lua",
    ["kong.plugins.escher.daos"] = "kong/plugins/escher/daos.lua",
    ["kong.plugins.escher.escher_wrapper"] = "kong/plugins/escher/escher_wrapper.lua",
    ["kong.plugins.escher.handler"] = "kong/plugins/escher/handler.lua",
    ["kong.plugins.escher.init_worker"] = "kong/plugins/escher/init_worker.lua",
    ["kong.plugins.escher.key_db"] = "kong/plugins/escher/key_db.lua",
    ["kong.plugins.escher.schema"] = "kong/plugins/escher/schema.lua",
    ["kong.plugins.escher.migrations.cassandra"] = "kong/plugins/escher/migrations/cassandra.lua",
    ["kong.plugins.escher.migrations.postgres"] = "kong/plugins/escher/migrations/postgres.lua"
  }
}
