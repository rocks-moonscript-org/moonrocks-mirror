package = "lua-libp2p-ngtcp2"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/dozyio/lua-libp2p-ngtcp2.git",
  tag = "v0.1.0",
}
description = {
  summary = "Native ngtcp2 backend for lua-libp2p QUIC",
  homepage = "https://github.com/dozyio/lua-libp2p-ngtcp2",
  license = "MIT",
}
dependencies = {
  "lua >= 5.4, < 5.5",
}
external_dependencies = {
  LIBUV = {
    header = "uv.h",
    library = "uv",
  },
  NGTCP2 = {
    header = "ngtcp2/ngtcp2.h",
    library = "ngtcp2",
  },
  NGTCP2_CRYPTO_OSSL = {
    header = "ngtcp2/ngtcp2_crypto_ossl.h",
    library = "ngtcp2_crypto_ossl",
  },
  OPENSSL_SSL = {
    header = "openssl/ssl.h",
    library = "ssl",
  },
  OPENSSL_CRYPTO = {
    header = "openssl/crypto.h",
    library = "crypto",
  },
}
build = {
  type = "builtin",
  modules = {
    lua_libp2p_ngtcp2 = {
      sources = { "native/lua_libp2p_ngtcp2.c" },
      libraries = { "uv", "ngtcp2", "ngtcp2_crypto_ossl", "ssl", "crypto" },
    },
  },
}
