external_dependencies = {
  ONIG = {
    header = "oniguruma.h",
    library = "onig",
  },
}
description = {
  homepage = "http://github.com/rrthomas/lrexlib",
  summary = "Regular expression library binding (oniguruma flavour).",
  license = "MIT/X11",
  detailed = "Lrexlib is a regular expression library for Lua 5.1 and 5.2, which\
provides bindings for several regular expression libraries.\
This rock provides the oniguruma bindings.",
}
build = {
  modules = {
    rex_onig = {
      libdirs = {
        "$(ONIG_LIBDIR)",
      },
      sources = {
        "src/common.c",
        "src/oniguruma/lonig.c",
        "src/oniguruma/lonig_f.c",
      },
      libraries = {
        "onig",
      },
      defines = {
        "VERSION=\"2.7.2\"",
      },
      incdirs = {
        "$(ONIG_INCDIR)",
      },
    },
  },
  type = "builtin",
}
version = "2.7.2-1"
dependencies = {
  "lua >= 5.1",
}
package = "Lrexlib-oniguruma"
source = {
  tag = "rel-2-7-2",
  url = "git://github.com/rrthomas/lrexlib.git",
}
