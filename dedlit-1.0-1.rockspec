package = "dedlit"
version = "1.0-1"
source = {
  url = "git://github.com/shakna-israel/dedlit",
  tag = "1.0.1"
}
description = {
  summary = "A dead simple literate Lua.",
  detailed = [[A stupidly simple literate Lua evaluator.
  ]],
  homepage = "https://github.com/shakna-israel/dedlit",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "none",
  install = {
    lua = {
      "dedlit/dedlit.lua"
    }
  }
}
