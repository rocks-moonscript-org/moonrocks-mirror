package="luacrypto"
version="0.2.0-2"
source = {
   url = "http://luaforge.net/frs/download.php/1722/luacrypto-0.2.0.tar.gz",
   md5 = "1e1319d960f0760b113b3e7ad9a3607d",
}
description = {
   summary = "Lua bindings for OpenSSL libcrypto.",
   detailed = [[
      LuaCrypto provides a Lua frontend to the OpenSSL cryptographic library.
      The OpenSSL features that are currently exposed are digests (MD5, SHA-1,
      HMAC, and more) and crypto-grade random number generators.
   ]],
   homepage = "http://luacrypto.luaforge.net",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   OPENSSL = {
      header = "openssl/ssl.h",
      library = "libcrypto.so"
   }
}

build = {
   type = "builtin",
   modules = {
    crypto = {
      sources = { "src/lcrypto.c" },
      incdirs = { "$(OPENSSL_INCDIR)", "src/" },
      libraries = { "crypto" },
      libdirs = { "$(OPENSSL_LIBDIR)" }
    }
   },
   copy_directories = { "doc", "test" }
}
