package = "ccrunx-compose"
version = "0.1-1"
source = {
  url = "git+ssh://git@github.com/daelvn/ccrunx-compose.git",
  tag = "v0.1"
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
  install = {
    bin = {
      ["ccrunx-compose"] = "ccrunx-compose"
    }
  },
  copy_directories = {
    "docs"
  }
}
