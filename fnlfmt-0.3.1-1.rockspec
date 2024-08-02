package = "fnlfmt"
local fnlfmt_version = "0.3.1"
version = fnlfmt_version .. "-1"
source = {
  url = "git+https://git.sr.ht/~technomancy/fnlfmt",
  tag = fnlfmt_version,
}
description = {
  summary = "Format your Fennel!",
  detailed = [[
    For the most part, fnlfmt follows established lisp conventions when
    determining how to format a given piece of code. Key/value tables are shown
    with each key/value pair on its own line, unless they are small enough to
    all fit on one line. Sequential tables similarly have each element on their
    own line unless they fit all on a single line. Tables with string keys and
    symbol values will use {: foo : bar} shorthand notation where possible.
  ]],
  homepage = "https://git.sr.ht/~technomancy/fnlfmt#fennel-format",
  license = "MIT",
}
dependencies = {
  -- "fennel",
}
build = {
  type = "make",
  install_variables = {
    PREFIX="$(PREFIX)",
    BIN_DIR="$(BINDIR)",
  },
}
