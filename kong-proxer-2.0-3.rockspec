package = "kong-proxer"
version = "2.0-3"
source = {
  url = "git+https://github.com/fenix-hub/kong-proxer.git"
}
description = {
  summary = "A Kong plugin that allows access to an upstream url through a proxy",
  license = "Apache 2.0"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.proxer.handler"] = "src/handler.lua",
    ["kong.plugins.proxer.schema"] = "src/schema.lua"
  }
}
