package = "revault_api"
version = "0.3.13-1"
source = { url = "https://github.com/onepub-dev/reVault" }
description = {
  summary = "Complete class-based reVault lockbox and vault API",
  detailed = [[
    Encrypt files, credentials, keys, and typed records in portable lockboxes,
    and manage local vault metadata through an owned LuaJIT FFI API.
  ]],
  homepage = "https://docs.revault.onepub.dev/",
  license = "reVault Source Available License 1.0"
}
dependencies = { "lua >= 5.1" }
build = {
  type = "builtin",
  modules = { revault_api = "revault_api.lua", revault_flatbuffers = "revault_flatbuffers.lua" },
  install = {
    lib = { ["revault_api_native"] = "native/linux-x86_64-gnu/librevault_api.so" },
    lua = { ["revault_flatbuffers"] = "revault_flatbuffers.lua" }
  }
}
