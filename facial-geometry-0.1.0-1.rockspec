rockspec_format = "3.0"
package = "facial-geometry"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/visualcraft-lab/facial-geometry-lua.git",
   tag = "v0.1.0",
}
description = {
   summary = "Zero-dependency Lua library for 2D facial landmark geometry metrics",
   detailed = [[
Pure-math Lua module for computing 2D facial landmark geometry metrics including
canthal tilt angle, vertical facial thirds balance, golden ratio deviation, and
bilateral mirror symmetry.

Interactive calculator and reference definitions: https://looksmaxscale.com/
   ]],
   homepage = "https://looksmaxscale.com/",
   issues_url = "https://github.com/visualcraft-lab/facial-geometry-lua/issues",
   maintainer = "VisualCraft Lab <wzzhang96@gmail.com>",
   license = "MIT",
   labels = { "math", "geometry", "landmarks", "computer-vision" },
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["facial_geometry"] = "src/facial_geometry.lua",
   },
}
