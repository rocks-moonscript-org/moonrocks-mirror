rockspec_format = "3.0"
package = "ptable.sile"
version = "3.0.0-1"
source = {
  url = "git+https://github.com/Omikhleia/ptable.sile.git",
  tag = "v3.0.0",
}
description = {
  summary = "Paragraph boxes, framed boxes and table packages for the SILE typesetting system.",
  detailed = [[
    This package for the SILE typesetter provides struts, paragraph boxes
    (parbox), framed boxes (framebox) and tables (ptable).
  ]],
  homepage = "https://github.com/Omikhleia/ptable.sile",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["sile.packages.struts"]                      = "packages/struts/init.lua",
    ["sile.packages.parbox"]                      = "packages/parbox/init.lua",
    ["sile.packages.ptable"]                      = "packages/ptable/init.lua",
    ["sile.packages.framebox"]                    = "packages/framebox/init.lua",
    ["sile.packages.framebox.graphics.renderer"]  = "packages/framebox/graphics/renderer.lua",
    ["sile.packages.framebox.graphics.rough"]     = "packages/framebox/graphics/rough.lua",
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
