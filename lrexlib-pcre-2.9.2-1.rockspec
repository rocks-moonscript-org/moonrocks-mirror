source = {
  url = "git+https://github.com/rrthomas/lrexlib.git",
  tag = "rel-2-9-2",
}
description = {
  summary = "Regular expression library binding (PCRE flavour).",
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.4, which\
provides bindings for several regular expression libraries.\
This rock provides the PCRE bindings.",
  license = "MIT/X11",
  homepage = "https://github.com/rrthomas/lrexlib",
}
dependencies = {
  "lua >= 5.1",
}
package = "Lrexlib-PCRE"
build = {
  type = "builtin",
  modules = {
    rex_pcre = {
      sources = {
        "src/common.c",
        "src/pcre/lpcre.c",
        "src/pcre/lpcre_f.c",
      },
      defines = {
        "VERSION=\"2.9.2\"",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      incdirs = {
        "$(PCRE_INCDIR)",
      },
      libdirs = {
        "$(PCRE_LIBDIR)",
      },
      libraries = {
        "pcre",
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
version = "2.9.2-1"
