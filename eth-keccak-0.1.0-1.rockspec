package = "eth-keccak"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/DevElCuy/eth-keccak.git",
  tag = "v0.1.0"
}
description = {
  summary = "Ethereum-compatible Keccak-256 for Lua 5.1",
  detailed = [[
Small Lua C module exposing Ethereum-compatible Keccak-256 helpers for standard Lua 5.1.
]],
  homepage = "https://github.com/DevElCuy/eth-keccak",
  license = "MIT"
}
dependencies = {
  "lua = 5.1"
}
build = {
  type = "builtin",
  modules = {
    eth_keccak = {
      sources = { "src/eth_keccak.c" }
    }
  }
}
