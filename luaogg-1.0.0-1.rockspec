package = "luaogg"
version = "1.0.0-1"

source = {
  url = "https://github.com/jprjr/luaogg/releases/download/v1.0.0/luaogg-1.0.0.tar.gz"
}

description = {
  summary = "Lua bindings to libogg",
  homepage = "https://github.com/jprjr/luaogg",
  license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["luaogg"] = {
      libdirs = "$(OGG_LIBDIR)",
      incdirs = "$(OGG_INCDIR)",
      libraries = "ogg",
      sources = {
        "csrc/luaogg.c",
      },
    },
  }
}

dependencies = {
  "lua >= 5.1",
}

external_dependencies = {
  OGG = {
    header = 'ogg/ogg.h',
    library = 'ogg',
  },
}

