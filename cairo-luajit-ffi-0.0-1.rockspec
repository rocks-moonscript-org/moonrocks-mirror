package = "cairo-luajit-ffi"
version = "0.0-1"

source = {
  url = "git+https://github.com/uriid1/cairo-luajit-ffi.git",
}

description = {
  summary = "FFI bindings for Cairo graphics",
  detailed = [[
    https://www.cairographics.org/manual/ Methods have undergone minimal changes, but it's better to refer to cairo-ffi.lua, the examples, and test/all_test.lua.
  ]],
  homepage = "https://github.com/uriid1/cairo-luajit-ffi",
  license = "GPL"
}

dependencies = {
 "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    [package] = "init.lua",
    [package..".ext.histogram"] = "ext/histogram.lua",
    [package..".src.cairo-tee_h"] = "src/cairo-tee_h.lua",
    [package..".src.cairo-svg_h"] = "src/cairo-svg_h.lua",
    [package..".src.cairo-ps_h"] = "src/cairo-ps_h.lua",
    [package..".src.cairo-pdf_h"] = "src/cairo-pdf_h.lua",
    [package..".src.cairo_h"] = "src/cairo_h.lua",
  }
}
