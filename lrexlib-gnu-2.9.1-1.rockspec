build = {
  type = "builtin",
  modules = {
    rex_gnu = {
      defines = {
        "VERSION=\"2.9.1\"",
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
dependencies = {
  "lua >= 5.1",
}
source = {
  tag = "rel-2-9-1",
  url = "git://github.com/rrthomas/lrexlib.git",
}
description = {
  homepage = "http://github.com/rrthomas/lrexlib",
  license = "MIT/X11",
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.4, which\
provides bindings for several regular expression libraries.\
This rock provides the GNU bindings.",
  summary = "Regular expression library binding (GNU flavour).",
}
version = "2.9.1-1"
package = "Lrexlib-GNU"
