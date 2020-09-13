package = "gh-md-toc"
version = "1.6-0"
source = {
  url = "git://github.com/jonathanpoelen/gh-md-toc",
  tag = "v1.6.0"
}
description = {
  summary = "Generates a github markdown TOC (table of contents)",
  homepage = "https://github.com/jonathanpoelen/gh-md-toc",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "lpeg >= 1.0",
  "lua-curl >= 0.3", -- optional with the -c parameter (see gm-md-toc --help)
  "argparse >= 0.6",
}
build = {
  type = "none",
  install = {
    bin = { ["gh-md-toc"] = "gh-md-toc.lua", }
  },
}
