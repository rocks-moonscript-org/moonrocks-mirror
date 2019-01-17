package = "ccrunx-compose"
version = "0.2-2"
source = {
  url = "git+ssh://git@github.com/daelvn/ccrunx-compose.git",
  tag = "v0.2"
}
description = {
  summary = "Compose environments for CCRunX",
  homepage = "https://github.com/daelvn/ccrunx-compose",
  license = "MIT/X11"
}
dependencies = {
  "ltext",
  "lrunkit",
  "argparse",
  "penlight",
  "lyaml"
}
build = {
  type = "builtin",
  modules = {},
  install = {
    bin = {
      ["ccrunx-compose"] = "ccrunx-compose.lua"
    }
  },
  copy_directories = {
    "docs"
  }
}
