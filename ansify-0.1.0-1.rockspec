package = "ansify"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/luamod/ansify",
}

description = {
  summary = "ANSI styling and text helpers",
  detailed = [[
Build ANSI-styled terminal strings with style composition, inline tag formatting,
visible-width helpers, ANSI-safe slicing, wrapping, alignment, truncation,
and line or word splitting.
  ]],
  homepage = "https://github.com/luamod/ansify",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["ansify"] = "ansify.lua",
  },
}
