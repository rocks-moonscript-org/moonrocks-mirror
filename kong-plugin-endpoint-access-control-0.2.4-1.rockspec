package = "kong-plugin-endpoint-access-control"
version = "0.2.4-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-endpoint-access-control.git",
  tag = "0.2.4"
}
description = {
  summary = "Endpoint Access Control for Kong API gateway plugins.",
  homepage = "https://github.com/emartech/kong-plugin-endpoint-access-control",
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
    ["kong.plugins.endpoint-access-control.handler"] = "kong/plugins/endpoint-access-control/handler.lua",
    ["kong.plugins.endpoint-access-control.schema"] = "kong/plugins/endpoint-access-control/schema.lua",
    ["kong.plugins.endpoint-access-control.api"] = "kong/plugins/endpoint-access-control/api.lua",
    ["kong.plugins.endpoint-access-control.daos"] = "kong/plugins/endpoint-access-control/daos.lua",
    ["kong.plugins.endpoint-access-control.endpoint_access_control_permissions_db"] = "kong/plugins/endpoint-access-control/endpoint_access_control_permissions_db.lua",
    ["kong.plugins.endpoint-access-control.migrations.000_base_endpoint_permission"] = "kong/plugins/endpoint-access-control/migrations/000_base_endpoint_permission.lua",
    ["kong.plugins.endpoint-access-control.migrations.init"] = "kong/plugins/endpoint-access-control/migrations/init.lua",
  }
}
