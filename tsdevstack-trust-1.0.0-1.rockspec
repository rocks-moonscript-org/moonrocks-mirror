rockspec_format = "3.0"
package = "tsdevstack-trust"
version = "1.0.0-1"
source = {
  url = "git+https://github.com/tsdevstack/kong-plugins.git",
  tag = "v1.0.0",
}
description = {
  summary = "Adds a shared trust token to every request Kong sends upstream",
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
    ["kong.plugins.tsdevstack-trust.handler"] = "kong/plugins/tsdevstack-trust/handler.lua",
    ["kong.plugins.tsdevstack-trust.schema"] = "kong/plugins/tsdevstack-trust/schema.lua",
  },
}
