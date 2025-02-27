build = {
  install = {
    bin = {
      fir = "bin/fir.lua"
    }
  },
  modules = {
    ["alfons.tasks.fir"] = "alfons/tasks/fir.lua",
    ["fir.error"] = "fir/error.lua",
    ["fir.file"] = "fir/file.lua",
    ["fir.generic.backend"] = "fir/generic/backend.lua",
    ["fir.generic.emit.markdown"] = "fir/generic/emit/markdown.lua",
    ["fir.generic.emit.tests"] = "fir/generic/emit/tests.lua",
    ["fir.generic.parser"] = "fir/generic/parser.lua",
    ["fir.version"] = "fir/version.lua"
  },
  type = "builtin"
}
dependencies = {
  "lua >= 5.1",
  "argparse",
  "ansikit",
  "lpath",
  "lrexlib-pcre2"
}
description = {
  detailed = "fir extracts documentation comments from source code and builds trees out of them, so you can turn them into any other format.\n",
  homepage = "https://github.com/daelvn/fir",
  summary = "A language-agnostic documentation generator."
}
package = "fir"
rockspec_format = "3.0"
source = {
  tag = "v2.0.0",
  url = "git://github.com/daelvn/fir.git"
}
version = "2.0.0-2"
