package = "odoid"
version = "1.0.2-1"
source = {
  url = "git+https://github.com/Webictbyleo/odoid.git",
  tag = "lua/v1.0.2",
}
description = {
  summary  = "Deterministic mixed-radix ID encoding",
  detailed = [[
    OdoID maps a non-negative integer to a 6, 7, or 8-character alphanumeric
    string with a serial-number aesthetic. Ambiguous characters I, L, and O are
    excluded from all positions to prevent transcription errors.
  ]],
  homepage = "https://github.com/Webictbyleo/odoid",
  license  = "MIT",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["odoid"]           = "odoid/init.lua",
    ["odoid.charsets"]  = "odoid/charsets.lua",
    ["odoid.errors"]    = "odoid/errors.lua",
    ["odoid.encode"]    = "odoid/encode.lua",
    ["odoid.decode"]    = "odoid/decode.lua",
    ["odoid.generator"] = "odoid/generator.lua",
  },
}
