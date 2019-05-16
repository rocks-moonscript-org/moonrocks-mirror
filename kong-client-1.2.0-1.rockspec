package = "kong-client"
version = "1.2.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-client.git",
  tag = "1.2.0"
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
    ["kong_client"] = "kong_client/init.lua",
    ["kong_client.resources.resource_object"] = "kong_client/resources/resource_object.lua",
    ["kong_client.resources.service"] = "kong_client/resources/service.lua",
    ["kong_client.resources.route"] = "kong_client/resources/route.lua",
    ["kong_client.resources.plugin"] = "kong_client/resources/plugin.lua",
    ["kong_client.resources.consumer"] = "kong_client/resources/consumer.lua",
    ["kong_client.resources.upstream"] = "kong_client/resources/upstream.lua",
    ["kong_client.helpers.pager"] = "kong_client/helpers/pager.lua",
    ["kong_client.helpers.merge"] = "kong_client/helpers/merge.lua",
    ["kong_client.spec.test_helpers"] = "spec/test_helpers.lua"
  }
}
