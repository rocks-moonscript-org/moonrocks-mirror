package = "ltypekit-parser"
version = "7.0-1"
description = {
  summary = "Source code for ltypekit7's signature parser, unembedded.",
  detailed = [[This is the source for ltypekit7's signature parser, extracted from the original project and adapted to use debugkit. ltypekit7 dependencies are also removed so this library is standalone, and parses signatures just as ltypekit7 does.]],
  homepage = "https://github.com/daelvn/ltypekit-parser",
}
dependencies = { "debugkit",  }
source = {
  url = "git://github.com/daelvn/ltypekit-parser.git",
}
build = {
  type = "builtin",
  copy_directories = { "docs",  },
  modules = { ["ltypekit-parser.config"] = "ltypekit-parser/config.lua", ["ltypekit-parser.init"] = "ltypekit-parser/init.lua", },
}
