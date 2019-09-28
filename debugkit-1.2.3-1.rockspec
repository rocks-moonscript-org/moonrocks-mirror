package = "debugkit"
version = "1.2.3-1"
description = {
  summary = "A wrapper around inspect.lua and ansicolors.lua to make debugging easier.",
  detailed = [[debugkit provides functions that make processes such as the usual print debugging easier, along with filtering and coloring]],
  homepage = "https://git.daelvn.ga/debugkit/",
}
dependencies = { "inspect", "ansicolors",  }
source = {
  url = "git://github.com/daelvn/debugkit",
  tag = "v1.2.3",
}
build = {
  type = "builtin",
  copy_directories = { "docs",  },
  modules = { ["debugkit.init"] = "debugkit/init.lua", },
}
