external_dependencies = {
  POSIX = {
    header = "regex.h",
  },
}
package = "Lrexlib-POSIX"
build = {
  modules = {
    rex_posix = {
      sources = {
        "src/common.c",
        "src/posix/lposix.c",
      },
      defines = {
        "VERSION=\"2.9.0\"",
        "LUA_COMPAT_5_2",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
    },
  },
  type = "builtin",
}
description = {
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.3, which\
provides bindings for several regular expression libraries.\
This rock provides the POSIX bindings.",
  summary = "Regular expression library binding (POSIX flavour).",
  homepage = "http://github.com/rrthomas/lrexlib",
  license = "MIT/X11",
}
version = "2.9.0-1"
dependencies = {
  "lua >= 5.1",
}
source = {
  url = "git://github.com/rrthomas/lrexlib.git",
  tag = "rel-2-9-0",
}
