package = "debugkit-extra"
version = "2.0-1"
source  = {
  url = "git://github.com/daelvn/debugkit",
  tag = "v2.0"
}
description = {
  summary = "Optional dependencies for debugkit.",
  homepage = "https://github.com/daelvn/debugkit"
}
dependencies = {
  "debugkit",
  "lrexlib-pcre2",
  "inspect",
  "lua-cjson2"
}
build = {type = "none"}