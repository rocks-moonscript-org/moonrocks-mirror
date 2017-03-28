package = "lq"
version = "0.0.2-1"
source = {
  url = "https://github.com/urzds/lq/archive/v0.0.2-1.tar.gz",
  dir = "lq-0.0.2-1"
}
description = {
  summary = "command-line Lua table processor",
  detailed = [[
    lq is for Lua what jq is for JSON
  ]],
  homepage = "https://github.com/urzds/lq/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "argparse >= 0.5",
  "lpeg >= 1.0",
  "microlight >= 1.0",
  "stdlib >= 41",
}
build = {
  type = "none",
  install = {
    bin = {
      lq = "lq.lua",
    }
  },
}
