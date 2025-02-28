rockspec_format = "3.0"
package = "rough"
version = "1.0.0-1"
source = {
  url = "git+https://github.com/Omikhleia/rough-lua.git",
  tag = "v1.0.0",
}
description = {
  summary = "Pure Lua library for creating hand-drawn graphics",
  detailed = [[
    Port of Rough.js to Lua.
    It is a small graphics library that lets you draw in a sketchy, hand-drawn-like, style.
  ]],
  homepage = "https://github.com/Omikhleia/rough-lua",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
  "penlight >= 1.14.0"
}
build = {
  type = "builtin",
  modules = {
    ["prng-prigarin"]                                  = "prng-prigarin/init.lua",
    ["rough-lua.rough.jsshims"]                        = "rough-lua/rough/jsshims.lua",
    ["rough-lua.rough.generator"]                      = "rough-lua/rough/generator.lua",
    ["rough-lua.rough.renderer"]                       = "rough-lua/rough/renderer.lua",
    ["rough-lua.rough.fillers.hachure-filler"]         = "rough-lua/rough/fillers/hachure-filler.lua",
    ["rough-lua.rough.fillers.zigzag-filler"]          = "rough-lua/rough/fillers/zigzag-filler.lua",
    ["rough-lua.rough.fillers.zigzag-line-filler"]     = "rough-lua/rough/fillers/zigzag-line-filler.lua",
    ["rough-lua.rough.fillers.dot-filler"]             = "rough-lua/rough/fillers/dot-filler.lua",
    ["rough-lua.rough.fillers.dashed-filler"]          = "rough-lua/rough/fillers/dashed-filler.lua",
    ["rough-lua.rough.fillers.scan-line-hachure"]      = "rough-lua/rough/fillers/scan-line-hachure.lua",
    ["rough-lua.rough.fillers.hatch-filler"]           = "rough-lua/rough/fillers/hatch-filler.lua",
    ["rough-lua.rough.fillers.hachure-fill"]           = "rough-lua/rough/fillers/hachure-fill.lua",
    ["rough-lua.rough.fillers.filler"]                 = "rough-lua/rough/fillers/filler.lua",
    ["rough-lua.rough.geometry"]                       = "rough-lua/rough/geometry.lua",
    ["rough-lua.untested.path-data-parser"]                 = "rough-lua/untested/path-data-parser/init.lua",
    ["rough-lua.untested.path-data-parser.parser"]          = "rough-lua/untested/path-data-parser/parser.lua",
    ["rough-lua.untested.path-data-parser.normalize"]       = "rough-lua/untested/path-data-parser/normalize.lua",
    ["rough-lua.untested.path-data-parser.absolutize"]      = "rough-lua/untested/path-data-parser/absolutize.lua",
    ["rough-lua.untested.points-on-curve"]                  = "rough-lua/untested/points-on-curve/init.lua",
    ["rough-lua.untested.points-on-curve.curve-to-bezier"]  = "rough-lua/untested/points-on-curve/curve-to-bezier.lua",
  }
}
