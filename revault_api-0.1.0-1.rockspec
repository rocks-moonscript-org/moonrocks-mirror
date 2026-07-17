package = "revault_api"
version = "0.1.0-1"
source = { url = "https://github.com/onepub-dev/reVault" }
description = {
  summary = "Complete class-based reVault lockbox and vault API",
  homepage = "https://github.com/onepub-dev/reVault",
  license = "reVault Source Available License 1.0"
}
dependencies = { "lua >= 5.1", "lua-protobuf" }
build = {
  type = "builtin",
  modules = { revault_api = "revault_api.lua" },
  install = {
    lib = { ["revault_api_native"] = "native/linux-aarch64-gnu/librevault_api.so" },
    lua = { ["revault_bindings"] = "revault_bindings.pb" }
  }
}
