package = "ppkit"
version = "1.0-1"

source = {
  url  = "git://github.com/daelvn/ppkit",
  tag  = "v1.0"
}

description = {
  summary  = "Preprocessor maker kit",
  detailed = [[
    ppkit is a library that lets you create your
    own preprocessors using very simple rule
    declarations.
  ]],
  homepage = "http://me.daelvn.ga/ppkit",
  license  = "MIT"
}

dependencies = {
  "lobject",
  "ansicolors"
}

build = {
  type    = "builtin",
  modules = {
    ppkit = "ppkit.lua"
  }
}
