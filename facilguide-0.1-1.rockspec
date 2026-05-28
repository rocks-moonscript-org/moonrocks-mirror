package = "facilguide"
version = "0.1-1"
source = {
  url = "git://github.com/arnaudleroy-studio/facilguide-lua",
  tag = "v0.1"
}
description = {
  summary = "Lua internationalization utilities for multi-language websites",
  detailed = [[
    facilguide provides Lua helper functions for building multi-language
    websites, inspired by the Facil.guide localization architecture.
    Includes locale detection from URL paths, localized path generation,
    hreflang tag output for SEO, and supported locale validation. Works
    with any Lua web framework or templating engine.
  ]],
  homepage = "https://facil.guide",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["facilguide"] = "src/facilguide.lua"
  }
}
