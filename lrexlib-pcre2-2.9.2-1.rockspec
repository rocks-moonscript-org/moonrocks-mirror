source = {
  url = "git+https://github.com/rrthomas/lrexlib.git",
  tag = "rel-2-9-2",
}
description = {
  summary = "Regular expression library binding (PCRE2 flavour).",
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.4, which\
provides bindings for several regular expression libraries.\
This rock provides the PCRE2 bindings.",
  license = "MIT/X11",
  homepage = "https://github.com/rrthomas/lrexlib",
}
dependencies = {
  "lua >= 5.1",
}
package = "Lrexlib-PCRE2"
build = {
  type = "builtin",
  modules = {
    rex_pcre2 = {
      sources = {
        "src/common.c",
        "src/pcre2/lpcre2.c",
        "src/pcre2/lpcre2_f.c",
      },
      defines = {
        "VERSION=\"2.9.2\"",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      incdirs = {
        "$(PCRE2_INCDIR)",
      },
      libdirs = {
        "$(PCRE2_LIBDIR)",
      },
      libraries = {
        "pcre2-8",
      },
    },
  },
}
external_dependencies = {
  PCRE2 = {
    header = "pcre2.h",
    library = "pcre2-8",
  },
}
version = "2.9.2-1"
