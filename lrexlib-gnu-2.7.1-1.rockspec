external_dependencies = {
  GNU = {
    header = "regex.h",
  },
}
dependencies = {
  "lua >= 5.1",
}
description = {
  license = "MIT/X11",
  detailed = "      Lrexlib is a regular expression library for Lua 5.1 and 5.2, which\
      provides bindings for several regular expression libraries.\
      This rock provides the GNU bindings.\
    ",
  homepage = "http://github.com/rrthomas/lrexlib",
  summary = "Regular expression library binding (GNU flavour).",
}
source = {
  url = "https://github.com/downloads/rrthomas/lrexlib/lrexlib-2.7.1.zip",
  md5 = "0a6ac1dfdf17e10a0be6688d1cddf47f",
}
build = {
  type = "builtin",
  modules = {
    rex_gnu = {
      sources = {
        "src/common.c",
        "src/gnu/lgnu.c",
      },
      defines = {
        "VERSION=\"2.7.1\"",
      },
    },
  },
}
version = "2.7.1-1"
package = "Lrexlib-GNU"
