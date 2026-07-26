package = "cairo-luajit-ffi"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/uriid1/cairo-luajit-ffi.git",
  tag = "v0.1.0",
}

description = {
  summary = "FFI bindings to Cairo graphics",
  detailed = [[
    https://www.cairographics.org/manual/ Methods have undergone minimal changes, but it's better to refer to init.lua, the examples, and test/all_test.lua.
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
    [package..".ext.base"] = "ext/base.lua",
    [package..".ext.badge"] = "ext/badge.lua",
    [package..".ext.captcha"] = "ext/captcha.lua",
    [package..".ext.histogram"] = "ext/histogram.lua",
    [package..".ext.identicon"] = "ext/identicon.lua",
    [package..".ext.placeholder"] = "ext/placeholder.lua",
    [package..".ext.progress"] = "ext/progress.lua",
    [package..".src.cairo-tee_h"] = "src/cairo-tee_h.lua",
    [package..".src.cairo-svg_h"] = "src/cairo-svg_h.lua",
    [package..".src.cairo-ps_h"] = "src/cairo-ps_h.lua",
    [package..".src.cairo-pdf_h"] = "src/cairo-pdf_h.lua",
    [package..".src.cairo_h"] = "src/cairo_h.lua",
  }
}
