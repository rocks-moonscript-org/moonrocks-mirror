package = "ltl"
version = "0.4-0"
source = {
  url = "git://github.com/jperon/ltl",
  tag = "v0.4"
}
description = {
  homepage = "https://github.com/jperon/ltl",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "moonscript",
  "argparse",
  "lpeg"
}
build = {
  type = "command",
  build_command = "moonc *.moon && cp ltl.lua ltl",
  modules = {
    ltl = "ltl.lua"
  },
  install = {
    bin = {
      "ltl"
    }
  }
}
