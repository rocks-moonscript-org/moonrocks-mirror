rockspec_format = "3.0"
package = "dxf-geometry"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/visualcraft-lab/dxf-geometry-lua.git",
   tag = "v0.1.0",
}
description = {
   summary = "Zero-dependency Lua library for 2D CAD and DXF geometry metrics and RDP simplification",
   detailed = [[
Pure-math Lua module for 2D CAD and DXF geometry calculations including
polyline perimeter, shoelace polygon area, raster DPI-to-millimeter calibration,
1:N architectural drawing scale conversion, Ramer-Douglas-Peucker simplification,
and minimal ASCII DXF LWPOLYLINE formatting.

Online image-to-CAD reference: https://imgtocad.com/
   ]],
   homepage = "https://imgtocad.com/",
   issues_url = "https://github.com/visualcraft-lab/dxf-geometry-lua/issues",
   maintainer = "VisualCraft Lab <wzzhang96@gmail.com>",
   license = "MIT",
   labels = { "cad", "dxf", "geometry", "math", "vector" },
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["dxf_geometry"] = "src/dxf_geometry.lua",
   },
}
