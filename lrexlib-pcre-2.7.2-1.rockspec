external_dependencies = {
  PCRE = {
    header = "pcre.h",
    library = "pcre",
  },
}
description = {
  homepage = "http://github.com/rrthomas/lrexlib",
  summary = "Regular expression library binding (PCRE flavour).",
  license = "MIT/X11",
  detailed = "Lrexlib is a regular expression library for Lua 5.1 and 5.2, which\
provides bindings for several regular expression libraries.\
This rock provides the PCRE bindings.",
}
build = {
  modules = {
    rex_pcre = {
      libdirs = {
        "$(PCRE_LIBDIR)",
      },
      sources = {
        "src/common.c",
        "src/pcre/lpcre.c",
        "src/pcre/lpcre_f.c",
      },
      libraries = {
        "pcre",
      },
      defines = {
        "VERSION=\"2.7.2\"",
      },
      incdirs = {
        "$(PCRE_INCDIR)",
      },
    },
  },
  type = "builtin",
}
version = "2.7.2-1"
dependencies = {
  "lua >= 5.1",
}
package = "Lrexlib-PCRE"
source = {
  tag = "rel-2-7-2",
  url = "git://github.com/rrthomas/lrexlib.git",
}
