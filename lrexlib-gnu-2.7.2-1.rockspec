external_dependencies = {
  GNU = {
    header = "regex.h",
  },
}
description = {
  homepage = "http://github.com/rrthomas/lrexlib",
  summary = "Regular expression library binding (GNU flavour).",
  license = "MIT/X11",
  detailed = "Lrexlib is a regular expression library for Lua 5.1 and 5.2, which\
provides bindings for several regular expression libraries.\
This rock provides the GNU bindings.",
}
build = {
  modules = {
    rex_gnu = {
      defines = {
        "VERSION=\"2.7.2\"",
      },
      sources = {
        "src/common.c",
        "src/gnu/lgnu.c",
      },
    },
  },
  type = "builtin",
}
version = "2.7.2-1"
dependencies = {
  "lua >= 5.1",
}
package = "Lrexlib-GNU"
source = {
  tag = "rel-2-7-2",
  url = "git://github.com/rrthomas/lrexlib.git",
}
