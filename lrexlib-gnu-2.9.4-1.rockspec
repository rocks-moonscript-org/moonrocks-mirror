version = "2.9.4-1"
build = {
  type = "builtin",
  modules = {
    rex_gnu = {
      sources = {
        "src/common.c",
        "src/gnu/lgnu.c",
      },
      defines = {
        "VERSION=\"2.9.4\"",
        "LUA_LIB=",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
    },
  },
}
external_dependencies = {
  GNU = {
    header = "regex.h",
  },
}
package = "Lrexlib-GNU"
source = {
  tag = "rel-2-9-4",
  url = "git+https://github.com/rrthomas/lrexlib.git",
}
dependencies = {
  "lua >= 5.1",
}
description = {
  license = "MIT/X11",
  homepage = "https://github.com/rrthomas/lrexlib",
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.4, which\
provides bindings for several regular expression libraries.\
This rock provides the GNU bindings.",
  summary = "Regular expression library binding (GNU flavour).",
}
