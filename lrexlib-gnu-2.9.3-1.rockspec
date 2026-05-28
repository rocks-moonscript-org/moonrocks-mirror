external_dependencies = {
  GNU = {
    header = "regex.h",
  },
}
source = {
  tag = "rel-2-9-3",
  url = "git+https://github.com/rrthomas/lrexlib.git",
}
description = {
  license = "MIT/X11",
  summary = "Regular expression library binding (GNU flavour).",
  homepage = "https://github.com/rrthomas/lrexlib",
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.4, which\
provides bindings for several regular expression libraries.\
This rock provides the GNU bindings.",
}
build = {
  modules = {
    rex_gnu = {
      defines = {
        "VERSION=\"2.9.3\"",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      sources = {
        "src/common.c",
        "src/gnu/lgnu.c",
      },
    },
  },
  type = "builtin",
}
version = "2.9.3-1"
package = "Lrexlib-GNU"
dependencies = {
  "lua >= 5.1",
}
