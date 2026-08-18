version = "2.9.4-1"
build = {
  type = "builtin",
  modules = {
    rex_pcre2 = {
      libraries = {
        "pcre2-8",
      },
      libdirs = {
        "$(PCRE2_LIBDIR)",
      },
      defines = {
        "VERSION=\"2.9.4\"",
        "LUA_LIB=",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      sources = {
        "src/common.c",
        "src/pcre2/lpcre2.c",
        "src/pcre2/lpcre2_f.c",
      },
      incdirs = {
        "$(PCRE2_INCDIR)",
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
package = "Lrexlib-PCRE2"
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
This rock provides the PCRE2 bindings.",
  summary = "Regular expression library binding (PCRE2 flavour).",
}
