package = "lualame"
version = "1.0.0-2"

source = {
  url = "https://buffering.party/software/lualame/lualame-1.0.0.tar.gz"
}

description = {
  summary = "Lua bindings to libmp3lame",
  homepage = "https://buffering.party/software/lualame/",
  license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["lualame.version"] = "src/lualame/version.lua",
    ["lualame"] = {
      libdirs = "$(LAME_LIBDIR)",
      incdirs = "$(LAME_INCDIR)",
      libraries = "mp3lame",
      sources = {
        'csrc/lualame.c',
        'csrc/lualame_defines.c',
        'csrc/lualame_internal.c',
      },
    },
  }
}

dependencies = {
  "lua >= 5.1",
}

external_dependencies = {
  LAME = {
    header = 'lame/lame.h',
    library = 'mp3lame',
  },
}


