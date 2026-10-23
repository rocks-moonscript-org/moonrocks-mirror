package = "cipher.rc4"
version = "0.0.1-1"
local versionNumber = version:gsub("^(.*)-.-$", "%1")
source = {
  url = "https://github.com/osch/lua-cipher/archive/v"..versionNumber..".zip",
  dir = "lua-cipher-"..versionNumber,
}
description = {
  summary = "RC4 (ARCFOUR) stream cipher for Lua strings and carrays",
  homepage = "https://github.com/osch/lua-cipher",
  license = "MIT",
  detailed = [[
      The module cipher.rc4 of lua-cipher provides the RC4 (ARCFOUR) stream
      cipher with keys of 1 to 256 bytes, optionally discarding the first bytes
      of the keystream (RC4-drop[n]), in one call or as a stream, for reading
      legacy formats. Own self-contained C code, no external library. Data may
      be Lua strings or carray objects, read without copying; the output can
      be written directly into a carray.
  ]],
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["cipher.rc4"] = {
      sources = { 
          "src/rc4/main.c",
          "src/rc4/rc4mod.c",
          "src/rc4/rc4_compat.c",
      },
      defines   = { "CIPHER_RC4_VERSION="..versionNumber },
    },
  },
  -- copy no directory: luarocks then installs the top-level README and
  -- LICENSE files into the rock's doc/ directory
  copy_directories = {},
}
