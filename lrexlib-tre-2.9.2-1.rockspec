source = {
  url = "git+https://github.com/rrthomas/lrexlib.git",
  tag = "rel-2-9-2",
}
description = {
  summary = "Regular expression library binding (TRE flavour).",
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.4, which\
provides bindings for several regular expression libraries.\
This rock provides the TRE bindings.",
  license = "MIT/X11",
  homepage = "https://github.com/rrthomas/lrexlib",
}
dependencies = {
  "lua >= 5.1",
}
package = "Lrexlib-TRE"
build = {
  type = "builtin",
  modules = {
    rex_tre = {
      sources = {
        "src/common.c",
        "src/tre/ltre.c",
      },
      defines = {
        "VERSION=\"2.9.2\"",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      incdirs = {
        "$(TRE_INCDIR)",
      },
      libdirs = {
        "$(TRE_LIBDIR)",
      },
      libraries = {
        "tre",
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
version = "2.9.2-1"
