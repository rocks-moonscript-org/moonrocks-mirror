package = "punch"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/azratul/punch.lua.git",
  tag = "v0.1.0"
}

description = {
  summary  = "Pure-Lua P2P NAT traversal: STUN, ICE-lite, hole punching, AES-GCM",
  detailed = [[
    punch establishes direct UDP connections between peers behind NAT
    without port forwarding, VPNs, or external tunneling binaries.
    Discovers public endpoints via STUN, coordinates hole punching with
    ICE-style candidate pairs, and encrypts the channel with AES-256-GCM.
    Falls back to a relay broker when the NAT type prevents direct traversal.
    Includes a minimal HTTP signaling server for local description exchange.
    Works with vim.uv (Neovim) or luv (standalone LuaJIT).
    Requires OpenSSL installed on the system for encryption and WSS.
  ]],
  homepage = "https://github.com/azratul/punch.lua",
  license  = "GPL-3.0",
}

dependencies = {
  "lua >= 5.1",
  "luv",
}

-- OpenSSL (libcrypto) is required for AES-256-GCM encryption and WSS relay
external_dependencies = {
  OPENSSL = {
    library = "crypto"
  }
}

build = {
  type = "builtin",
  modules = {
    ["punch"]                    = "punch/init.lua",
    ["punch.signaling_server"]   = "punch/signaling_server.lua",
    ["punch.session"]            = "punch/session.lua",
    ["punch.ice"]                = "punch/ice.lua",
    ["punch.punch"]              = "punch/punch.lua",
    ["punch.stun"]               = "punch/stun.lua",
    ["punch.signal"]             = "punch/signal.lua",
    ["punch.channel"]            = "punch/channel.lua",
    ["punch.crypto"]             = "punch/crypto.lua",
    ["punch.relay"]              = "punch/relay.lua",
    ["punch.ws"]                 = "punch/ws.lua",
    ["punch.log"]                = "punch/log.lua",
  },
}
