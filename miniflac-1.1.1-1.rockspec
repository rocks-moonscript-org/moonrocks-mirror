package = "miniflac"
version = "1.1.1-1"

source = {
  url = "https://github.com/jprjr/luaminiflac/releases/download/v1.1.1/luaminiflac-1.1.1.tar.gz"
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

