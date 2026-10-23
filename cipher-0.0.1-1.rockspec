package = "cipher"
version = "0.0.1-1"
local versionNumber = version:gsub("^(.*)-.-$", "%1")
source = {
  url = "https://github.com/osch/lua-cipher/archive/v"..versionNumber..".zip",
  dir = "lua-cipher-"..versionNumber,
}
description = {
  summary = "Ciphers for Lua strings and carrays (meta rock)",
  homepage = "https://github.com/osch/lua-cipher",
  license = "MIT",
  detailed = [[
      The meta rock of lua-cipher: it installs all cipher modules of
      lua-cipher (cipher.aes, cipher.rc4, cipher.chacha20 and cipher.des)
      and the pure Lua module cipher, through which they are loaded on first
      access, e.g. require("cipher").aes is require("cipher.aes"). Data may
      be Lua strings or carray objects, read without copying; the output can
      be written directly into a carray.
  ]],
}
dependencies = {
  "lua >= 5.1",
  "cipher.aes >= "..versionNumber,
  "cipher.rc4 >= "..versionNumber,
  "cipher.chacha20 >= "..versionNumber,
  "cipher.des >= "..versionNumber,
}
build = {
  type = "builtin",
  modules = {
    cipher = "src/cipher.lua",
  },
  -- copy no directory: luarocks then installs the top-level README and
  -- LICENSE files into the rock's doc/ directory
  copy_directories = {},
}
