package = "compress.lzma"
version = "0.0.1-1"
local versionNumber = version:gsub("^(.*)-.-$", "%1")
source = {
  url = "https://github.com/osch/lua-compress/archive/v"..versionNumber..".zip",
  dir = "lua-compress-"..versionNumber,
}
description = {
  summary = "xz, lzma and raw LZMA1/LZMA2 compression for Lua strings and carrays",
  homepage = "https://github.com/osch/lua-compress",
  license = "MIT",
  detailed = [[
      The module compress.lzma of lua-compress provides LZMA compression and
      decompression with liblzma (XZ Utils) for Lua strings and carray objects:
      the formats xz, lzma (legacy .lzma) and raw LZMA1/LZMA2 streams (e.g. of
      7z archives, with their coder properties), in one call or as a stream,
      with presets, the LZMA options, integrity checks, flush modes, memory
      limits and liblzma's status codes. Carrays are read without copying and
      can receive the output directly.
  ]],
}
dependencies = {
  "lua >= 5.1",
}
external_dependencies = {
  LZMA = {
    header  = "lzma.h",
    library = "lzma",
  },
  platforms = {
    -- MSVC: the import library of XZ Utils' CMake build (also vcpkg's port liblzma)
    -- is lzma.lib since XZ Utils 5.6.3, liblzma.lib before (see doc/lzma.md, "Building")
    windows = {
      LZMA = {
        library = "lzma",
      },
    },
    -- MinGW/MSYS2: liblzma.dll.a
    mingw32 = {
      LZMA = {
        library = "lzma",
      },
    },
  },
}
build = {
  type = "builtin",
  modules = {
    ["compress.lzma"] = {
      sources = { 
          "src/lzma/main.c",
          "src/lzma/lzmamod.c",
          "src/lzma/lzma_compat.c",
      },
      defines   = { "COMPRESS_LZMA_VERSION="..versionNumber },
      libraries = { "lzma" },
      incdirs   = { "$(LZMA_INCDIR)" },
      libdirs   = { "$(LZMA_LIBDIR)" },
    },
  },
  -- copy no directory: luarocks then installs the top-level README and
  -- LICENSE files into the rock's doc/ directory
  copy_directories = {},
}
