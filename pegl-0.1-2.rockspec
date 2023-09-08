package = "pegl"
version = "0.1-2"
source = {
  url = "git+ssh://git@github.com/civboot/pegl.git"
}
description = {
  summary = "PEGL: PEG-like recursive descent parser",
  homepage = "https://github.com/civboot/pegl",
  license = "UNLICENSE"
}
dependencies = {
  "lua ~> 5.3",
  "civ >= 0.1-2",
}
build = {
  type = "builtin",
  modules = {
    pegl = "pegl.lua",
  },
  copy_directories = {
    "tests"
  }
}
