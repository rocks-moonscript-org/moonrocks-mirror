build = {
  type = "builtin",
  modules = {
    rex_onig = {
      defines = {
        "VERSION=\"2.9.1\"",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      sources = {
        "src/common.c",
        "src/oniguruma/lonig.c",
        "src/oniguruma/lonig_f.c",
      },
      libraries = {
        "onig",
      },
      incdirs = {
        "$(ONIG_INCDIR)",
      },
      libdirs = {
        "$(ONIG_LIBDIR)",
      },
    },
  },
}
external_dependencies = {
  ONIG = {
    header = "oniguruma.h",
    library = "onig",
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
This rock provides the oniguruma bindings.",
  summary = "Regular expression library binding (oniguruma flavour).",
}
version = "2.9.1-1"
package = "Lrexlib-oniguruma"
