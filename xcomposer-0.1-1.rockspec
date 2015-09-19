package = "xcomposer"
version = "0.1-1"
source = {
  url = "git://github.com/hugomg/xcomposer",
  tag = "v0.1",
}
description = {
  summary = "A DSL for more readable .XCompose files",
  homepage = "https://github.com/hugomg/xcomposer",
  license = "MIT",
}
dependencies = {
  "lpeg",
}
build = {
  type = "builtin",
  modules = {
  },
  install = {
    bin = {
      xcomposer = "xcomposer",
    }
  },
}
