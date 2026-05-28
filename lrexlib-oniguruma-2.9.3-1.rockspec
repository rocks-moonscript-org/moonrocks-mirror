external_dependencies = {
  ONIG = {
    header = "oniguruma.h",
    library = "onig",
  },
}
source = {
  tag = "rel-2-9-3",
  url = "git+https://github.com/rrthomas/lrexlib.git",
}
description = {
  license = "MIT/X11",
  summary = "Regular expression library binding (oniguruma flavour).",
  homepage = "https://github.com/rrthomas/lrexlib",
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.4, which\
provides bindings for several regular expression libraries.\
This rock provides the oniguruma bindings.",
}
build = {
  modules = {
    rex_onig = {
      incdirs = {
        "$(ONIG_INCDIR)",
      },
      libdirs = {
        "$(ONIG_LIBDIR)",
      },
      sources = {
        "src/common.c",
        "src/oniguruma/lonig.c",
        "src/oniguruma/lonig_f.c",
      },
      defines = {
        "VERSION=\"2.9.3\"",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      libraries = {
        "onig",
      },
    },
  },
  type = "builtin",
}
version = "2.9.3-1"
package = "Lrexlib-oniguruma"
dependencies = {
  "lua >= 5.1",
}
