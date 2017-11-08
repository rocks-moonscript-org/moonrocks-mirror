external_dependencies = {
  ONIG = {
    header = "oniguruma.h",
    library = "onig",
  },
}
package = "Lrexlib-oniguruma"
build = {
  modules = {
    rex_onig = {
      incdirs = {
        "$(ONIG_INCDIR)",
      },
      defines = {
        "VERSION=\"2.9.0\"",
        "LUA_COMPAT_5_2",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      sources = {
        "src/common.c",
        "src/oniguruma/lonig.c",
        "src/oniguruma/lonig_f.c",
      },
      libdirs = {
        "$(ONIG_LIBDIR)",
      },
      libraries = {
        "onig",
      },
    },
  },
  type = "builtin",
}
description = {
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.3, which\
provides bindings for several regular expression libraries.\
This rock provides the oniguruma bindings.",
  summary = "Regular expression library binding (oniguruma flavour).",
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
