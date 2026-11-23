package = "luaplotlib"
version = "4.19.0-1"

source = {
  url = "git+https://github.com/numeric-lua/luaplotlib.git",
  tag = "v4.19.0",
}

description = {
  summary = "Pure-Lua matplotlib-inspired SVG plotting",
  detailed = [[
    Line, scatter, histogram, bar, error-bar, box, heatmap, contour, polar,
    polar heatmap and contour, polar quiver vector fields with capped glyph
    rendering, polar streamplots with deterministic RK4 streamline
    integration, arc-length arrow anchors, dashed/dotted or hidden paths,
    closed-orbit deduplication, periodic full-turn fields, bounded
    line/point caps, and seed/arc-length scene metadata, polar colorbar with
    explicit nice ticks, rotated collision-aware contour labels, and subplot
    figures with linear/log axes, measured-text legends, tick rotation, and
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
    ["luaplotlib.markers"] = "luaplotlib/markers.lua",
    ["luaplotlib.polar"] = "luaplotlib/polar.lua",
    ["luaplotlib.render"] = "luaplotlib/render.lua",
    ["luaplotlib.scene"] = "luaplotlib/scene.lua",
    ["luaplotlib.subplots"] = "luaplotlib/subplots.lua",
    ["luaplotlib.text"] = "luaplotlib/text.lua",
    ["luaplotlib.axes3d"] = "luaplotlib/axes3d.lua",
    ["luaplotlib.export"] = "luaplotlib/export.lua",
    ["luaplotlib.ticks"] = "luaplotlib/ticks.lua",
    ["luaplotlib.util"] = "luaplotlib/util.lua",
  },
}
