package = "luawav"
version = "1.3.0-2"

source = {
  url = "https://buffering.party/software/luawav/luawav-1.3.0.tar.gz"
}

description = {
  summary = "Lua library to read and write WAV files, powered by dr_wav",
  homepage = "https://buffering.party/software/luawav/",
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

