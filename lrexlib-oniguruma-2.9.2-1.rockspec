source = {
  url = "git+https://github.com/rrthomas/lrexlib.git",
  tag = "rel-2-9-2",
}
description = {
  summary = "Regular expression library binding (oniguruma flavour).",
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.4, which\
provides bindings for several regular expression libraries.\
This rock provides the oniguruma bindings.",
  license = "MIT/X11",
  homepage = "https://github.com/rrthomas/lrexlib",
}
dependencies = {
  "lua >= 5.1",
}
package = "Lrexlib-oniguruma"
build = {
  type = "builtin",
  modules = {
    rex_onig = {
      sources = {
        "src/common.c",
        "src/oniguruma/lonig.c",
        "src/oniguruma/lonig_f.c",
      },
      defines = {
        "VERSION=\"2.9.2\"",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      incdirs = {
        "$(ONIG_INCDIR)",
      },
      libdirs = {
        "$(ONIG_LIBDIR)",
      },
      libraries = {
        "onig",
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
version = "2.9.2-1"
