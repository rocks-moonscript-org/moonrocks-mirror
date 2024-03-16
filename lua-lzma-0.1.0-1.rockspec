package = "lua-lzma"
version = "0.1.0-1"
source = {
   url = "https://codeberg.org/leso-kn/lua-lzma/archive/v0.1.0.tar.gz",
   dir = "lua-lzma"
}
description = {
   summary = "LZMA compression and decompression functionality extracted from luazen for Lua 5.1 - 5.4 + JIT.",
   homepage = "https://codeberg.org/leso-kn/lua-lzma",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      lzma = {
         incdirs = {
            "src",
            "src/lzma"
         },
         sources = {
            "src/lua-lzma.c",
            "src/lzma/Alloc.c",
            "src/lzma/CpuArch.c",
            "src/lzma/LzFind.c",
            "src/lzma/LzFindMt.c",
            "src/lzma/LzFindOpt.c",
            "src/lzma/LzmaDec.c",
            "src/lzma/LzmaEnc.c",
            "src/lzma/LzmaLib.c",
            "src/lzma/Threads.c"
         }
      }
   }
}
