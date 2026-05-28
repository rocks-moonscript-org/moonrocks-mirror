external_dependencies = {
  PCRE2 = {
    header = "pcre2.h",
    library = "pcre2-8",
  },
}
source = {
  tag = "rel-2-9-3",
  url = "git+https://github.com/rrthomas/lrexlib.git",
}
description = {
  license = "MIT/X11",
  summary = "Regular expression library binding (PCRE2 flavour).",
  homepage = "https://github.com/rrthomas/lrexlib",
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.4, which\
provides bindings for several regular expression libraries.\
This rock provides the PCRE2 bindings.",
}
build = {
  modules = {
    rex_pcre2 = {
      incdirs = {
        "$(PCRE2_INCDIR)",
      },
      libdirs = {
        "$(PCRE2_LIBDIR)",
      },
      sources = {
        "src/common.c",
        "src/pcre2/lpcre2.c",
        "src/pcre2/lpcre2_f.c",
      },
      defines = {
        "VERSION=\"2.9.3\"",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      libraries = {
        "pcre2-8",
      },
    },
  },
  type = "builtin",
}
version = "2.9.3-1"
package = "Lrexlib-PCRE2"
dependencies = {
  "lua >= 5.1",
}
