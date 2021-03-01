package = "luawav"
version = "1.1.0-1"

source = {
  url = "https://github.com/jprjr/luawav/releases/download/v1.1.0/luawav-1.1.0.tar.gz"
}

description = {
  summary = "Lua library to read and write WAV files, powered by dr_wav",
  homepage = "https://github.com/jprjr/luawav",
  license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["luawav.version"] = "src/luawav/version.lua",
    ["luawav"] = {
      sources = {
        "csrc/luawav.c",
        "csrc/luawav_int64.c",
        "csrc/luawav_internal.c",
        "csrc/dr_wav.c",
      },
    },
  }
}

dependencies = {
  "lua >= 5.1",
}

