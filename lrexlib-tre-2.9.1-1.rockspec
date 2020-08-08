build = {
  type = "builtin",
  modules = {
    rex_tre = {
      defines = {
        "VERSION=\"2.9.1\"",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      sources = {
        "src/common.c",
        "src/tre/ltre.c",
      },
      libraries = {
        "tre",
      },
      incdirs = {
        "$(TRE_INCDIR)",
      },
      libdirs = {
        "$(TRE_LIBDIR)",
      },
    },
  },
}
external_dependencies = {
  TRE = {
    header = "tre/tre.h",
    library = "tre",
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
This rock provides the TRE bindings.",
  summary = "Regular expression library binding (TRE flavour).",
}
version = "2.9.1-1"
package = "Lrexlib-TRE"
