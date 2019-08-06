package = "ccrunx-image"
version = "0.3-2"
source = {
  url = "git+ssh://git@github.com/daelvn/ccrunx-image.git",
  tag = "v0.3"
}
description = {
  summary = "Create packages for CCRunX environments",
  homepage = "https://github.com/daelvn/ccrunx-image",
}
dependencies = {
  "argparse",
  "ltext"
}
build = {
  type = "builtin",
  modules = {},
  install = {
    bin = {
      ["ccrunx-image"] = "ccrunx-image.lua"
    }
  },
  copy_directories = {
    "docs"
  }
}
