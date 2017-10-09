package = "kong-uma-rs"
version = "1.0-0"
source = {
  url = "git://github.com/GluuFederation/kong-plugins"
}
description = {
  summary = "kong uma rs",
  detailed = [[
    Forked from handler.lua
  ]],
  homepage = "https://github.com/GluuFederation/kong-plugins/tree/master/kong-uma-rs",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    access = "kong/plugins/kong-uma-rs/access.lua",
    common = "kong/plugins/kong-uma-rs/common.lua",
    handler = "kong/plugins/kong-uma-rs/handler.lua",
    helper = "kong/plugins/kong-uma-rs/helper.lua",
    schema = "kong/plugins/kong-uma-rs/schema.lua"
  }
}
