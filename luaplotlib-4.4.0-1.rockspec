package = "luaplotlib"
version = "4.4.0-1"

source = {
  url = "git+https://github.com/numeric-lua/luaplotlib.git",
  tag = "v4.4.0",
}

description = {
  summary = "Pure-Lua matplotlib-inspired SVG plotting",
  detailed = [[
    Line, scatter, histogram, bar, error-bar, box, heatmap, contour, and
    subplot figures with linear/log axes, legends, tick rotation, and
    renderer-agnostic scene export. No runtime dependencies.
  ]],
  homepage = "https://github.com/numeric-lua/luaplotlib",
  license = "BSD-3-Clause",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    luaplotlib = "luaplotlib.lua",
    ["luaplotlib.colors"] = "luaplotlib/colors.lua",
    ["luaplotlib.data"] = "luaplotlib/data.lua",
    ["luaplotlib.figure"] = "luaplotlib/figure.lua",
    ["luaplotlib.render"] = "luaplotlib/render.lua",
    ["luaplotlib.scene"] = "luaplotlib/scene.lua",
    ["luaplotlib.subplots"] = "luaplotlib/subplots.lua",
    ["luaplotlib.axes3d"] = "luaplotlib/axes3d.lua",
    ["luaplotlib.export"] = "luaplotlib/export.lua",
    ["luaplotlib.ticks"] = "luaplotlib/ticks.lua",
    ["luaplotlib.util"] = "luaplotlib/util.lua",
  },
}
