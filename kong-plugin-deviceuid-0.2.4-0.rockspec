package = "kong-plugin-deviceuid"
version = "0.2.4-0"
local pluginName = "deviceuid"
source = {
  url = "git://github.com/ernestofreyreg/kong-plugin-deviceuid",
  tag = "0.2.4"
}
description = {
  summary = "A Kong plugin that will add a sticky deviceuid cookie to all request",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "lua-resty-cookie >= 0.1.0"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.deviceuid.handler"] = "handler.lua",
    ["kong.plugins.deviceuid.schema"]  = "schema.lua"
  }
}
