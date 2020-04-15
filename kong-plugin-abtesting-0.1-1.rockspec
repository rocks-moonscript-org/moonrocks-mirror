package = "kong-plugin-Abtesting"
version = "0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/guoming/kong-plugin-AbTesting",
  tag = "v0.1-1"
}
description = {
  summary = "The Kong AbTesting plugin",
  license = "Apache 2.0",
  homepage = "https://github.com/guoming/kong-plugin-AbTesting",
  detailed = [[
      Kong AbTesting plugin. Bootstrap your plugin development.
  ]],
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.abtesting.handler"] = "src/handler.lua",
    ["kong.plugins.abtesting.schema"] = "src/schema.lua"
  }
}