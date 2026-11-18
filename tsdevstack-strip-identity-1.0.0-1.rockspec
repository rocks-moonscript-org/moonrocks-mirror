rockspec_format = "3.0"
package = "tsdevstack-strip-identity"
version = "1.0.0-1"
source = {
  url = "git+https://github.com/tsdevstack/kong-plugins.git",
  tag = "v1.0.0",
}
description = {
  summary = "Removes identity headers a client sent, before any auth plugin runs",
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
    ["kong.plugins.tsdevstack-strip-identity.handler"] = "kong/plugins/tsdevstack-strip-identity/handler.lua",
    ["kong.plugins.tsdevstack-strip-identity.schema"] = "kong/plugins/tsdevstack-strip-identity/schema.lua",
  },
}
