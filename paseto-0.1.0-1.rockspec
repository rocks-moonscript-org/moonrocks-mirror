package = "paseto"
version = "0.1.0-1"
description = {
   summary = "PASETO (Platform-Agnostic Security Tokens) for Lua",
   detailed = "PASETO (Platform-Agnostic SEcurity TOkens) is a specification and reference implementation for secure stateless tokens.",
   homepage = "http://github.com/peter-evans/paseto-lua",
   license = "MIT"
}
source = {
   url = "https://github.com/peter-evans/paseto-lua/archive/0.1.0.tar.gz",
   dir = "paseto-lua-0.1.0"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "basexx >= 0.4.0",
   "lua-struct >= 0.9.0"
}
external_dependencies = {
   SODIUM = {
      header = "sodium.h"
   }
}
supported_platforms = {
   "linux"
}
build = {
   type = "builtin",
   modules = {
      ["luasodium"] = {
         sources   = { "csrc/luasodium.c" },
         libraries = { "sodium" },
         incdirs   = { "$(SODIUM_INCDIR)" },
         libdirs   = { "$(SODIUM_LIBDIR)" }
      },
      ["paseto.v2"] = "paseto/v2.lua"
   }
}
