package = "libbeachcomber"
version = "0.8.0-1"

source = {
  url = "git+https://github.com/NavistAu/beachcomber.git",
  tag = "v0.8.0",
  dir = "sdks/lua",
}

description = {
  summary  = "Lua client SDK for the beachcomber daemon",
  detailed = [[
    Client library for the beachcomber daemon, binding libbeachcomber's C
    ABI. LuaJIT calls the cdylib directly via `ffi` (~0.3ms/call); PUC Lua
    falls back to shelling out to `comb` (~5ms/call, the sanctioned
    fallback for interpreters with no ffi). Client:transport() reports
    which one is active. Ships a minimal JSON encoder/decoder — no
    external dependency either way.
  ]],
  homepage = "https://github.com/NavistAu/beachcomber",
  license  = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type    = "builtin",
  modules = {
    ["beachcomber"]                     = "beachcomber/init.lua",
    ["beachcomber.client"]              = "beachcomber/client.lua",
    ["beachcomber.discovery"]           = "beachcomber/discovery.lua",
    ["beachcomber.error"]               = "beachcomber/error.lua",
    ["beachcomber.ffi"]                 = "beachcomber/ffi.lua",
    ["beachcomber.ffi_backend"]         = "beachcomber/ffi_backend.lua",
    ["beachcomber.subprocess_backend"]  = "beachcomber/subprocess_backend.lua",
    ["beachcomber.json"]                = "beachcomber/json.lua",
    ["beachcomber.watch_stream"]        = "beachcomber/watch_stream.lua",
  },
}
