package = "luaopus"
version = "1.0.0-1"

source = {
  url = "https://github.com/jprjr/luaopus/releases/download/v1.0.0/luaopus-1.0.0.tar.gz"
}

description = {
  summary = "Lua bindings to libopus",
  homepage = "https://github.com/jprjr/luaopus",
  license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["luaopus.version"] = "src/luaopus/version.lua",
    ["luaopus"] = {
      libdirs = "$(OPUS_LIBDIR)",
      incdirs = "$(OPUS_INCDIR)",
      libraries = "opus",
      sources = {
        "csrc/luaopus.c",
        "csrc/luaopus_decoder.c",
        "csrc/luaopus_defines.c",
        "csrc/luaopus_encoder.c",
        "csrc/luaopus_internal.c",
      },
    },
  }
}

dependencies = {
  "lua >= 5.1",
}

external_dependencies = {
  OPUS = {
    header = 'opus/opus.h',
    library = 'opus',
  },
}


