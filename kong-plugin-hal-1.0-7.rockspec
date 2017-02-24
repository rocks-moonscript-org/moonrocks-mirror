package = "kong-plugin-hal"
version = "1.0-7"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/Trust1Team/kong-plugin-hal",
  tag = "1.0.7"
}
description = {
  summary = "The Kong HAL plugin.",
  license = "MIT",
  homepage = "http://www.trust1team.com",
  detailed = [[
      The HAL plugin rewrites currie-values from hal/json bodies.
  ]],
}
dependencies = {
  "lua ~> 5.1",
  "dkjson ~> 2.5-2"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.hal.handler"] = "src/handler.lua",
    ["kong.plugins.hal.schema"] = "src/schema.lua",
    ["kong.plugins.hal.url"] = "src/url.lua",
    ["kong.plugins.hal.body_filter"] = "src/body_filter.lua"
  }
}