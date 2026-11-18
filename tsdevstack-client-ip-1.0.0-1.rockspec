rockspec_format = "3.0"
package = "tsdevstack-client-ip"
version = "1.0.0-1"
source = {
  url = "git+https://github.com/tsdevstack/kong-plugins.git",
  tag = "v1.0.0",
}
description = {
  summary = "Rate limits a trusted server's calls per visitor, by the address it forwards",
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
    ["kong.plugins.tsdevstack-client-ip.handler"] = "kong/plugins/tsdevstack-client-ip/handler.lua",
    ["kong.plugins.tsdevstack-client-ip.schema"] = "kong/plugins/tsdevstack-client-ip/schema.lua",
  },
}
