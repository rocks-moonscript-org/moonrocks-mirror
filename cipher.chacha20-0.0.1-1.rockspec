package = "cipher.chacha20"
version = "0.0.1-1"
local versionNumber = version:gsub("^(.*)-.-$", "%1")
source = {
  url = "https://github.com/osch/lua-cipher/archive/v"..versionNumber..".zip",
  dir = "lua-cipher-"..versionNumber,
}
description = {
  summary = "ChaCha20, XChaCha20 and ChaCha20-Poly1305 for Lua strings and carrays",
  homepage = "https://github.com/osch/lua-cipher",
  license = "MIT",
  detailed = [[
      The module cipher.chacha20 of lua-cipher provides the stream cipher
      ChaCha20 (RFC 8439, also with 64 bit nonces and as XChaCha20), the
      authenticated encryption ChaCha20-Poly1305 of RFC 8439 and
      XChaCha20-Poly1305, and the one-time authenticator Poly1305, in one call
      or as a stream. Own self-contained C code without table lookups, no
      external library. Data may be Lua strings or carray objects, read
      without copying; the output can be written directly into a carray.
  ]],
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["cipher.chacha20"] = {
      sources = { 
          "src/chacha20/main.c",
          "src/chacha20/chacha20mod.c",
          "src/chacha20/chacha.c",
          "src/chacha20/poly1305.c",
          "src/chacha20/chacha20_compat.c",
      },
      defines   = { "CIPHER_CHACHA20_VERSION="..versionNumber },
    },
  },
  -- copy no directory: luarocks then installs the top-level README and
  -- LICENSE files into the rock's doc/ directory
  copy_directories = {},
}
