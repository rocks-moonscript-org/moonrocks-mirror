external_dependencies = {
  TRE = {
    header = "tre/tre.h",
    library = "tre",
  },
}
description = {
  homepage = "http://github.com/rrthomas/lrexlib",
  summary = "Regular expression library binding (TRE flavour).",
  license = "MIT/X11",
  detailed = "Lrexlib is a regular expression library for Lua 5.1 and 5.2, which\
provides bindings for several regular expression libraries.\
This rock provides the TRE bindings.",
}
build = {
  modules = {
    rex_tre = {
      libdirs = {
        "$(TRE_LIBDIR)",
      },
      sources = {
        "src/common.c",
        "src/tre/ltre.c",
      },
      libraries = {
        "tre",
      },
      defines = {
        "VERSION=\"2.7.2\"",
      },
      incdirs = {
        "$(TRE_INCDIR)",
      },
    },
  },
  type = "builtin",
}
version = "2.7.2-1"
dependencies = {
  "lua >= 5.1",
}
package = "Lrexlib-TRE"
source = {
  tag = "rel-2-7-2",
  url = "git://github.com/rrthomas/lrexlib.git",
}
