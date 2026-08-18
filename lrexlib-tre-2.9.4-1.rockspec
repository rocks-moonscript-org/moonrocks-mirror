version = "2.9.4-1"
build = {
  type = "builtin",
  modules = {
    rex_tre = {
      libraries = {
        "tre",
      },
      libdirs = {
        "$(TRE_LIBDIR)",
      },
      defines = {
        "VERSION=\"2.9.4\"",
        "LUA_LIB=",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      sources = {
        "src/common.c",
        "src/tre/ltre.c",
      },
      incdirs = {
        "$(TRE_INCDIR)",
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
package = "Lrexlib-TRE"
source = {
  tag = "rel-2-9-4",
  url = "git+https://github.com/rrthomas/lrexlib.git",
}
dependencies = {
  "lua >= 5.1",
}
description = {
  license = "MIT/X11",
  homepage = "https://github.com/rrthomas/lrexlib",
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.4, which\
provides bindings for several regular expression libraries.\
This rock provides the TRE bindings.",
  summary = "Regular expression library binding (TRE flavour).",
}
