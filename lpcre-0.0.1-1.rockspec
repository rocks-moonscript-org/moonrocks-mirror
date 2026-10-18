package = "lpcre"
version = "0.0.1-1"
local versionNumber = version:gsub("^(.*)-.-$", "%1")
source = {
  url = "https://github.com/osch/lua-lpcre/archive/v"..versionNumber..".zip",
  dir = "lua-lpcre-"..versionNumber,
}
description = {
  summary = "PCRE2 regular expressions for Lua strings and carrays",
  homepage = "https://github.com/osch/lua-lpcre",
  license = "MIT",
  detailed = [[
      This Lua module provides PCRE2 regular expressions with an API in the
      style of Lua's string library. Subjects may be Lua strings or carray
      objects: carrays are matched directly on their buffer without copying.
      Compiled patterns are kept in a cache.
  ]],
}
dependencies = {
  "lua >= 5.1",
}
external_dependencies = {
  PCRE2 = {
    header  = "pcre2.h",
    library = "pcre2-8",
  },
}
build = {
  type = "builtin",
  modules = {
    lpcre = {
      sources = { 
          "src/main.c",
          "src/lpcre.c",
          "src/lpcre_compat.c",
      },
      defines   = { "LPCRE_VERSION="..versionNumber },
      libraries = { "pcre2-8" },
      incdirs   = { "$(PCRE2_INCDIR)" },
      libdirs   = { "$(PCRE2_LIBDIR)" },
    },
  },
}
