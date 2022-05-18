package = "miniflac"
version = "1.0.0-1"

source = {
  url = "https://github.com/jprjr/luaminiflac/releases/download/v1.0.0/luaminiflac-1.0.0.tar.gz"
}

description = {
  summary = "FLAC decoder based in miniflac",
  homepage = "https://github.com/jprjr/luaminiflac",
  license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["miniflac"] = {
      sources = {
        "csrc/miniflac.c",
      },
    },
    ["miniflac.decoder"] = "src/miniflac/decoder.lua",
  }
}

dependencies = {
  "lua >= 5.1",
}

