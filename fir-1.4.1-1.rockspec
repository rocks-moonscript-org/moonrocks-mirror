build = {
  install = {
    bin = {
      fir = "build/bin/fir.lua"
    }
  },
  modules = {
    ["fir.file"] = "build/fir/file.lua",
    ["fir.generic.backend"] = "build/fir/generic/backend.lua",
    ["fir.generic.emit.markdown"] = "build/fir/generic/emit/markdown.lua",
    ["fir.generic.emit.tests"] = "build/fir/generic/emit/tests.lua",
    ["fir.generic.parser"] = "build/fir/generic/parser.lua",
    ["fir.version"] = "build/fir/version.lua"
  },
  type = "builtin"
}
dependencies = {
  "lua >= 5.1",
  "argparse",
  "ansikit",
  "filekit"
}
description = {
  detailed = "fir extracts documentation comments from source code and builds trees out of them, so you can turn them into any other format.\n",
  homepage = "https://github.com/daelvn/fir",
  summary = "A language-agnostic documentation generator."
}
package = "fir"
rockspec_format = "3.0"
source = {
  tag = "v1.4.1",
  url = "git://github.com/daelvn/fir.git"
}
version = "1.4.1-1"
