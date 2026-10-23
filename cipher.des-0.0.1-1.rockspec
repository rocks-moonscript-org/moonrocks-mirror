package = "cipher.des"
version = "0.0.1-1"
local versionNumber = version:gsub("^(.*)-.-$", "%1")
source = {
  url = "https://github.com/osch/lua-cipher/archive/v"..versionNumber..".zip",
  dir = "lua-cipher-"..versionNumber,
}
description = {
  summary = "DES and Triple DES (ECB, CBC, CFB, OFB, CTR) for Lua strings and carrays",
  homepage = "https://github.com/osch/lua-cipher",
  license = "MIT",
  detailed = [[
      The module cipher.des of lua-cipher provides the block ciphers DES and
      Triple DES (EDE with two or three keys) in the modes ECB, CBC (PKCS#7
      padding), CFB, CFB8, OFB and CTR, in one call or as a stream, and a
      reusable key schedule object for single blocks, for reading and writing
      legacy formats. Own self-contained C code without table lookups, no
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
    ["cipher.des"] = {
      sources = { 
          "src/des/main.c",
          "src/des/desmod.c",
          "src/des/des_ct.c",
          "src/des/des_compat.c",
      },
      defines   = { "CIPHER_DES_VERSION="..versionNumber },
    },
  },
  -- copy no directory: luarocks then installs the top-level README and
  -- LICENSE files into the rock's doc/ directory
  copy_directories = {},
}
