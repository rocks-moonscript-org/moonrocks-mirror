package = "ao"
version = "1.3.0-0"
source = {
  url = "git://github.com/TheLinx/lao.git",
  tag = "1.3.0",
}
description = {
  summary  = "A library for audio output through Lua",
  detailed = [[
     Bindings for Libao, which is a cross-platform audio library
     that allows programs to output audio using a simple API.
  ]],
  homepage = "http://github.com/TheLinx/lao",
  license  = "CC0",
}
dependencies = {
  "lua >= 5.2"
}
external_dependencies = {
  LIBAO = {
    header = "ao/ao.h"
  }
}
build = {
  type = "builtin",
  modules = {
    ao = {
      sources   = {"src/lao.c"},
      libraries = {"ao"},
      incdirs   = {"$(LIBAO_INCDIR)"},
      libdirs   = {"$(LIBAO_LIBDIR)"},
    }
  }
}
