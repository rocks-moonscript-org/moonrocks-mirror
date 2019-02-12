package = "kong-client"
version = "1.0.0-2"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-client.git",
  tag = "1.0.0"
}
description = {
  summary = "Admin API client for Kong.",
  homepage = "https://github.com/emartech/kong-client.git",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1",
  "classic 0.1.0-1"
}
build = {
  type = "builtin",
  modules = {
    ["kong_client"] = "src/kong_client.lua",
    ["kong_client.resources.resource_object"] = "src/resources/resource_object.lua",
    ["kong_client.resources.service"] = "src/resources/service.lua",
    ["kong_client.resources.route"] = "src/resources/route.lua",
    ["kong_client.resources.plugin"] = "src/resources/plugin.lua",
    ["kong_client.resources.consumer"] = "src/resources/consumer.lua",
    ["kong_client.helpers.merge"] = "src/helpers/merge.lua",
    ["kong_client.helpers.pager"] = "src/helpers/pager.lua",
    ["kong_client.test_helpers"] = "spec/test_helpers.lua"
  }
}
