package = "luaogg"
version = "1.2.1-2"

source = {
  url = "https://buffering.party/software/luaogg/luaogg-1.2.1.tar.gz"
}

description = {
  summary = "Lua bindings to libogg",
  homepage = "https://buffering.party/software/luaogg/",
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

