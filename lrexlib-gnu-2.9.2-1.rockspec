source = {
  url = "git+https://github.com/rrthomas/lrexlib.git",
  tag = "rel-2-9-2",
}
description = {
  summary = "Regular expression library binding (GNU flavour).",
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.4, which\
provides bindings for several regular expression libraries.\
This rock provides the GNU bindings.",
  license = "MIT/X11",
  homepage = "https://github.com/rrthomas/lrexlib",
}
dependencies = {
  "lua >= 5.1",
}
package = "Lrexlib-GNU"
build = {
  type = "builtin",
  modules = {
    rex_gnu = {
      defines = {
        "VERSION=\"2.9.2\"",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      sources = {
        "src/common.c",
        "src/gnu/lgnu.c",
      },
    },
  },
}
external_dependencies = {
  GNU = {
    header = "regex.h",
  },
}
version = "2.9.2-1"
