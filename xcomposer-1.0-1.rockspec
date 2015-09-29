package = "xcomposer"
version = "1.0-1"
source = {
  url = "git://github.com/hugomg/xcomposer",
  tag = "v1.0",
}
description = {
  summary = "A DSL for more readable .XCompose files",
  homepage = "https://github.com/hugomg/xcomposer",
  license = "MIT",
}
dependencies = {
  "argparse",
  "dromozoa-utf8",
}
build = {
  type = "builtin",
  modules = {
    ["xcomposer.keysyms"] = "src/xcomposer/keysyms.lua",
  },
  install = {
    bin = {
      xcomposer = "src/main.lua",
    }
  },
}
