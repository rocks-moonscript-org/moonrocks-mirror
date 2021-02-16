package = "luaflac"
version = "2.0.0-1"

source = {
  url = "https://github.com/jprjr/luaflac/releases/download/v2.0.0/luaflac-2.0.0.tar.gz"
}

description = {
  summary = "Lua bindings to libflac",
  homepage = "https://github.com/jprjr/luaflac",
  license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["luaflac.version"] = "src/luaflac/version.lua",
    ["luaflac"] = {
      libdirs = "$(FLAC_LIBDIR)",
      incdirs = "$(FLAC_INCDIR)",
      libraries = "FLAC",
      sources = {
        "csrc/luaflac.c",
        "csrc/luaflac_internal.c",
        "csrc/luaflac_int64.c",
        "csrc/luaflac_no_ogg.c",
        "csrc/luaflac_export.c",
        "csrc/luaflac_format.c",
        "csrc/luaflac_metadata.c",
        "csrc/luaflac_stream_decoder.c",
        "csrc/luaflac_stream_encoder.c",
      },
    },
  }
}

dependencies = {
  "lua >= 5.1",
}

external_dependencies = {
  FLAC = {
    header = 'FLAC/all.h',
    library = 'FLAC',
  },
}


