external_dependencies = {
  ONIG = {
    library = "onig",
    header = "oniguruma.h",
  },
}
dependencies = {
  "lua >= 5.1",
}
description = {
  license = "MIT/X11",
  detailed = "      Lrexlib is a regular expression library for Lua 5.1 and 5.2, which\
      provides bindings for several regular expression libraries.\
      This rock provides the oniguruma bindings.\
    ",
  homepage = "http://github.com/rrthomas/lrexlib",
  summary = "Regular expression library binding (oniguruma flavour).",
}
source = {
  url = "https://github.com/downloads/rrthomas/lrexlib/lrexlib-2.7.1.zip",
  md5 = "0a6ac1dfdf17e10a0be6688d1cddf47f",
}
build = {
  type = "builtin",
  modules = {
    rex_onig = {
      libdirs = {
        "$(ONIG_LIBDIR)",
      },
      incdirs = {
        "$(ONIG_INCDIR)",
      },
      defines = {
        "VERSION=\"2.7.1\"",
      },
      sources = {
        "src/common.c",
        "src/oniguruma/lonig.c",
        "src/oniguruma/lonig_f.c",
      },
      libraries = {
        "onig",
      },
    },
  },
}
version = "2.7.1-1"
package = "Lrexlib-oniguruma"
