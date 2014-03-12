build = {
  modules = {
    rex_posix = {
      defines = {
        "VERSION=\"2.7.0\"",
      },
      sources = {
        "src/common.c",
        "src/posix/lposix.c",
      },
    },
  },
  type = "builtin",
}
description = {
  detailed = "      Lrexlib is a regular expression library for Lua 5.1, which\
      provides bindings for several regular expression libraries.\
      This rock provides the POSIX bindings.\
    ",
  summary = "Regular expression library binding (POSIX flavour).",
  license = "MIT/X11",
  homepage = "http://github.com/rrthomas/lrexlib",
}
external_dependencies = {
  POSIX = {
    header = "regex.h",
  },
}
package = "Lrexlib-POSIX"
source = {
  url = "https://github.com/downloads/rrthomas/lrexlib/lrexlib-2.7.0.zip",
  md5 = "38af85ff7e6211df708d05d7e2d08a9d",
}
version = "2.7.0-1"
dependencies = {
  "lua >= 5.1",
}
