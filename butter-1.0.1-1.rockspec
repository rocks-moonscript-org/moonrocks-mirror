package = "butter"
version = "1.0.1-1"

source = {
  url = "git://github.com/daelvn/butter",
  tag = "v1.0.1"
}

description = {
  summary  = "Preprocessor for shell files",
  detailed = [[
    butter is a preprocessor for shell files, with features like sourcing, namespaces,
    indent-based function declaration and others.
  ]],
  homepage = "http://me.daelvn.ga/butter",
  license  = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "lgetopt >= 1.2.8"
}

build = {
  type    = "none",
  install = {
    bin   = {
      butter    = "butter",
      libbutter = "libbutter.sh"
    },
  }
}
