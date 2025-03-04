package = "ccrunx-image"
version = "0.2-1"
source = {
  url = "git+ssh://git@github.com/daelvn/ccrunx-image.git",
  tag = "v0.2"
}
description = {
  summary = "Create packages for CCRunX environments",
  homepage = "https://github.com/daelvn/ccrunx-image",
  license = "MIT/X11"
}
dependencies = {
  "argparse",
  "ltext"
}
build = {
  type = "builtin",
  install = {
    bin = {
      ["ccrunx-image"] = "ccrunx-image"
    }
  },
  copy_directories = {
    "docs"
  }
}
