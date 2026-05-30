package = "miniflac"
version = "1.1.3-2"

source = {
  url = "https://buffering.party/software/luaminiflac/luaminiflac-1.1.3.tar.gz"
}

description = {
  summary = "FLAC decoder based on miniflac",
  homepage = "https://buffering.party/software/luaminiflac/",
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

