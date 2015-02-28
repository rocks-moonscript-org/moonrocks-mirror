dependencies = {
  "lua >= 5.1",
}
description = {
  summary = "Regular expression library binding (oniguruma flavour).",
  license = "MIT/X11",
  homepage = "http://github.com/rrthomas/lrexlib",
  detailed = "Lrexlib is a regular expression library for Lua 5.1 and 5.2, which\
provides bindings for several regular expression libraries.\
This rock provides the oniguruma bindings.",
}
source = {
  url = "git://github.com/rrthomas/lrexlib.git",
  tag = "rel-2-8-0",
}
build = {
  modules = {
    rex_onig = {
      defines = {
        "VERSION=\"2.8.0\"",
        "LUA_COMPAT_5_2",
      },
      incdirs = {
        "$(ONIG_INCDIR)",
      },
      libraries = {
        "onig",
      },
      sources = {
        "src/common.c",
        "src/oniguruma/lonig.c",
        "src/oniguruma/lonig_f.c",
      },
      libdirs = {
        "$(ONIG_LIBDIR)",
      },
    },
  },
  type = "builtin",
}
external_dependencies = {
  ONIG = {
    header = "oniguruma.h",
    library = "onig",
  },
}
package = "Lrexlib-oniguruma"
version = "2.8.0-1"
