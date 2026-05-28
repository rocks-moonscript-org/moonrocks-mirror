package = "lua-matplotlib"
version = "0.1.0-1"

source = {
   url    = "https://github.com/elyar-adil/lua-matplotlib/archive/c3f412080413b1b6a9fbdf98fe207f333ab4b5e2.tar.gz",
   dir    = "lua-matplotlib-c3f412080413b1b6a9fbdf98fe207f333ab4b5e2",
}

description = {
   summary  = "Pure-Lua matplotlib-style plotting and canvas drawing library",
   detailed = [[
lua-matplotlib is a zero-dependency, pure-Lua graphics library that provides:

  * A high-level Figure API (matplotlib-like): line plots, scatter plots,
    bar charts, area fills, automatic axes/ticks/legend.
  * A low-level Canvas API: pixels, lines, rectangles, circles, ellipses,
    polygons, Bézier curves, arcs, bitmap text.
  * A built-in PNG encoder (no external tools required).

Requires only standard Lua 5.1+; works with LuaJIT and Lua 5.4.
]],
   homepage = "https://github.com/elyar-adil/lua-matplotlib",
   license  = "MIT",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["matplotlib"]     = "plot.lua",
      ["matplotlib.png"] = "png.lua",
   },
}
