package = "compress.bzip2"
version = "0.0.1-1"
local versionNumber = version:gsub("^(.*)-.-$", "%1")
source = {
  url = "https://github.com/osch/lua-compress/archive/v"..versionNumber..".zip",
  dir = "lua-compress-"..versionNumber,
}
description = {
  summary = "bzip2 compression for Lua strings and carrays",
  homepage = "https://github.com/osch/lua-compress",
  license = "MIT",
  detailed = [[
      The module compress.bzip2 of lua-compress provides bzip2 compression and
      decompression with libbz2 for Lua strings and carray objects, in one
      call or as a stream, with the block size, the work factor, the low
      memory decompression mode and libbz2's status codes. Carrays are read
      without copying and can receive the output directly.
  ]],
}
dependencies = {
  "lua >= 5.1",
}
external_dependencies = {
  BZIP2 = {
    header  = "bzlib.h",
    library = "bz2",
  },
  platforms = {
    -- MSVC: the import library of vcpkg's port bzip2 is bz2.lib (see doc/bzip2.md,
    -- "Building")
    windows = {
      BZIP2 = {
        library = "bz2",
      },
    },
    -- MinGW/MSYS2: libbz2.dll.a
    mingw32 = {
      BZIP2 = {
        library = "bz2",
      },
    },
  },
}
build = {
  type = "builtin",
  modules = {
    ["compress.bzip2"] = {
      sources = { 
          "src/bzip2/main.c",
          "src/bzip2/bzip2mod.c",
          "src/bzip2/bzip2_compat.c",
      },
      defines   = { "COMPRESS_BZIP2_VERSION="..versionNumber },
      libraries = { "bz2" },
      incdirs   = { "$(BZIP2_INCDIR)" },
      libdirs   = { "$(BZIP2_LIBDIR)" },
    },
  },
  -- copy no directory: luarocks then installs the top-level README and
  -- LICENSE files into the rock's doc/ directory
  copy_directories = {},
}
