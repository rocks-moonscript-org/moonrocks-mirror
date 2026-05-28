external_dependencies = {
  PCRE = {
    header = "pcre.h",
    library = "pcre",
  },
}
source = {
  tag = "rel-2-9-3",
  url = "git+https://github.com/rrthomas/lrexlib.git",
}
description = {
  license = "MIT/X11",
  summary = "Regular expression library binding (PCRE flavour).",
  homepage = "https://github.com/rrthomas/lrexlib",
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.4, which\
provides bindings for several regular expression libraries.\
This rock provides the PCRE bindings.",
}
build = {
  modules = {
    rex_pcre = {
      incdirs = {
        "$(PCRE_INCDIR)",
      },
      libdirs = {
        "$(PCRE_LIBDIR)",
      },
      sources = {
        "src/common.c",
        "src/pcre/lpcre.c",
        "src/pcre/lpcre_f.c",
      },
      defines = {
        "VERSION=\"2.9.3\"",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      libraries = {
        "pcre",
      },
    },
  },
  type = "builtin",
}
version = "2.9.3-1"
package = "Lrexlib-PCRE"
dependencies = {
  "lua >= 5.1",
}
