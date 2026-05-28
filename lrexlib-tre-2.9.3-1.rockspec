external_dependencies = {
  TRE = {
    header = "tre/tre.h",
    library = "tre",
  },
}
source = {
  tag = "rel-2-9-3",
  url = "git+https://github.com/rrthomas/lrexlib.git",
}
description = {
  license = "MIT/X11",
  summary = "Regular expression library binding (TRE flavour).",
  homepage = "https://github.com/rrthomas/lrexlib",
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.4, which\
provides bindings for several regular expression libraries.\
This rock provides the TRE bindings.",
}
build = {
  modules = {
    rex_tre = {
      incdirs = {
        "$(TRE_INCDIR)",
      },
      libdirs = {
        "$(TRE_LIBDIR)",
      },
      sources = {
        "src/common.c",
        "src/tre/ltre.c",
      },
      defines = {
        "VERSION=\"2.9.3\"",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      libraries = {
        "tre",
      },
    },
  },
  type = "builtin",
}
version = "2.9.3-1"
package = "Lrexlib-TRE"
dependencies = {
  "lua >= 5.1",
}
