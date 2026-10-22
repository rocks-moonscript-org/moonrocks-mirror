package = "digest"
version = "0.0.1-1"
local versionNumber = version:gsub("^(.*)-.-$", "%1")
rockspec_format = "3.0"
source = {
  url = "https://github.com/osch/lua-digest/archive/v"..versionNumber..".zip",
  dir = "lua-digest-"..versionNumber,
}
description = {
  summary = "MD5, SHA-256/384/512 and HMAC for Lua (one-shot and streaming)",
  homepage = "https://github.com/osch/lua-digest",
  license = "MIT AND BSD-3-Clause",
  detailed = [[
      Message digests for Lua in one C module: MD5, SHA-256, SHA-384
      and SHA-512 as binary or lowercase hex strings, one-shot or
      through streaming digest objects (add/digest/hexdigest/reset/
      clone), and HMAC (RFC 2104) for all of them. Data may be Lua
      strings or, optionally, carray objects (read without copying).
      No dependencies beyond Lua; works with Lua 5.1 up to 5.5 and
      LuaJIT.
  ]],
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    digest = {
      sources = { "digestlib.c" },
      incdirs = { "." },
      defines = { "LUA_DIGEST_VERSION="..version:gsub("^(.*)-.-$", "%1") },
    },
  },
  -- copy no directory: luarocks then installs the top-level README and
  -- LICENSE files into the rock's doc/ directory
  copy_directories = {},
}
test = {
  type = "command",
  command = "lua",
  flags = { "run_tests.lua" },
}
