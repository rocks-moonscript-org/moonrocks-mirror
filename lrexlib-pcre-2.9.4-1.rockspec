version = "2.9.4-1"
build = {
  type = "builtin",
  modules = {
    rex_pcre = {
      libraries = {
        "pcre",
      },
      libdirs = {
        "$(PCRE_LIBDIR)",
      },
      defines = {
        "VERSION=\"2.9.4\"",
        "LUA_LIB=",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      sources = {
        "src/common.c",
        "src/pcre/lpcre.c",
        "src/pcre/lpcre_f.c",
      },
      incdirs = {
        "$(PCRE_INCDIR)",
      },
    },
  },
}
external_dependencies = {
  PCRE = {
    header = "pcre.h",
    library = "pcre",
  },
}
package = "Lrexlib-PCRE"
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
This rock provides the PCRE bindings.",
  summary = "Regular expression library binding (PCRE flavour).",
}
