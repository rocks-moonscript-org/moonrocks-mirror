package = "dedlit"
version = "2.0-0"
source = {
  url = "git://github.com/shakna-israel/dedlit",
  tag = "2.0.0"
}
description = {
  summary = "A dead simple literate Lua.",
  detailed = [[A simple literate Lua evaluator.
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
