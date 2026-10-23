package = "compress.brotli"
version = "0.0.1-1"
local versionNumber = version:gsub("^(.*)-.-$", "%1")
source = {
  url = "https://github.com/osch/lua-compress/archive/v"..versionNumber..".zip",
  dir = "lua-compress-"..versionNumber,
}
description = {
  summary = "Brotli compression and decompression for Lua strings and carrays",
  homepage = "https://github.com/osch/lua-compress",
  license = "MIT",
  detailed = [[
      The module compress.brotli of lua-compress provides Brotli compression
      and decompression (libbrotlienc/libbrotlidec) for Lua strings and
      carray objects, in one call or as a stream. Carrays are read without
      copying and can receive the output directly.
  ]],
}
dependencies = {
  "lua >= 5.1",
}
external_dependencies = {
  BROTLIDEC = {
    header  = "brotli/decode.h",
    library = "brotlidec",
  },
  BROTLIENC = {
    header  = "brotli/encode.h",
    library = "brotlienc",
  },
}
build = {
  type = "builtin",
  modules = {
    ["compress.brotli"] = {
      sources = { 
          "src/brotli/main.c",
          "src/brotli/brotli.c",
          "src/brotli/brotli_compat.c",
      },
      defines   = { "COMPRESS_BROTLI_VERSION="..versionNumber },
      libraries = { "brotlidec", "brotlienc" },
      incdirs   = { "$(BROTLIDEC_INCDIR)", "$(BROTLIENC_INCDIR)" },
      libdirs   = { "$(BROTLIDEC_LIBDIR)", "$(BROTLIENC_LIBDIR)" },
    },
  },
  -- copy no directory: luarocks then installs the top-level README and
  -- LICENSE files into the rock's doc/ directory
  copy_directories = {},
}
