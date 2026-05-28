package = "libbeachcomber"
version = "0.1.1-1"

source = {
  url = "git+https://github.com/NavistAu/beachcomber.git",
  tag = "v0.1.1",
  dir = "sdks/lua",
}

description = {
  summary  = "Lua client SDK for the beachcomber daemon",
  detailed = [[
    Client library for the beachcomber Unix-socket daemon.
    Provides synchronous get/poke/list/status operations with automatic
    backend detection: vim.uv inside Neovim, luasocket everywhere else.
    Ships a minimal JSON encoder/decoder — no external JSON dependency.
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
    ["libbeachcomber"]                  = "beachcomber/init.lua",
    ["libbeachcomber.client"]           = "beachcomber/client.lua",
    ["libbeachcomber.discovery"]        = "beachcomber/discovery.lua",
    ["libbeachcomber.json"]             = "beachcomber/json.lua",
    ["libbeachcomber.socket_luasocket"] = "beachcomber/socket_luasocket.lua",
    ["libbeachcomber.socket_vim"]       = "beachcomber/socket_vim.lua",
  },
}
