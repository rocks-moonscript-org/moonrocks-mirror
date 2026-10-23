package = "compress.zlib"
version = "0.0.1-1"
local versionNumber = version:gsub("^(.*)-.-$", "%1")
source = {
  url = "https://github.com/osch/lua-compress/archive/v"..versionNumber..".zip",
  dir = "lua-compress-"..versionNumber,
}
description = {
  summary = "zlib, gzip and raw deflate compression for Lua strings and carrays",
  homepage = "https://github.com/osch/lua-compress",
  license = "MIT",
  detailed = [[
      The module compress.zlib of lua-compress provides deflate compression
      and decompression with zlib for Lua strings and carray objects: the
      formats zlib (RFC 1950), gzip (RFC 1952) and raw deflate (RFC 1951),
      in one call or as a stream, with all parameters of deflateInit2(),
      dictionaries, flush modes, zlib's status codes and crc32/adler32.
      Carrays are read without copying and can receive the output directly.
  ]],
}
dependencies = {
  "lua >= 5.1",
}
external_dependencies = {
  ZLIB = {
    header  = "zlib.h",
    library = "z",
  },
  platforms = {
    -- MSVC: the import library of zlib is zlib.lib (see doc/zlib.md, "Building")
    windows = {
      ZLIB = {
        library = "zlib",
      },
    },
    -- MinGW/MSYS2: libz.dll.a
    mingw32 = {
      ZLIB = {
        library = "z",
      },
    },
  },
}
build = {
  type = "builtin",
  modules = {
    ["compress.zlib"] = {
      sources = { 
          "src/zlib/main.c",
          "src/zlib/zlibmod.c",
          "src/zlib/zlib_compat.c",
      },
      defines   = { "COMPRESS_ZLIB_VERSION="..versionNumber },
      libraries = { "z" },
      incdirs   = { "$(ZLIB_INCDIR)" },
      libdirs   = { "$(ZLIB_LIBDIR)" },
    },
  },
  platforms = {
    windows = {
      modules = {
        ["compress.zlib"] = {
          libraries = { "zlib" },
        },
      },
    },
    mingw32 = {
      modules = {
        ["compress.zlib"] = {
          libraries = { "z" },
        },
      },
    },
  },
  -- copy no directory: luarocks then installs the top-level README and
  -- LICENSE files into the rock's doc/ directory
  copy_directories = {},
}
