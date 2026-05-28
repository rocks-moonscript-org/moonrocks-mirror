rockspec_format = "3.0"
package = "grail"
version = "1.1.0-1"
source = {
  url = "git+https://github.com/Omikhleia/grail.git",
  tag = "v1.1.0",
}
description = {
  summary = "A Graphics Intermediate Library",
  detailed = [[
    Grail (A Graphics Intermediate Library) is a small Lua graphics library that lets you draw lines, polygons and curves.
  ]],
  homepage = "https://github.com/Omikhleia/grail",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
  "penlight >= 1.14.0",
  "rough",
}
build = {
  type = "builtin",
  modules = {
    ["grail.renderer"]                                 = "grail/renderer.lua",
    ["grail.renderers.base"]                           = "grail/renderers/base.lua",
    ["grail.renderers.pdf"]                            = "grail/renderers/pdf.lua",

    ["grail.color"]                                    = "grail/color/init.lua",
    ["grail.color.compat"]                             = "grail/color/compat.lua",
    ["grail.color.utils"]                              = "grail/color/utils.lua",
    ["grail.color.presets"]                            = "grail/color/presets.lua",
    ["grail.gradient"]                                 = "grail/gradient/init.lua",
    ["grail.gradient.presets"]                         = "grail/gradient/presets.lua",

    ["grail.painters.default"]                         = "grail/painters/default.lua",
    ["grail.painters.rough"]                           = "grail/painters/rough.lua",

    ["grail.shapes.arc"]                               = "grail/shapes/arc.lua",
  }
}
