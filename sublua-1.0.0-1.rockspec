package = "sublua"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/MontaQLabs/sublua.git",
   tag = "v1.0.0"
}
description = {
   summary = "Lightweight Polkadot/Substrate SDK for Lua — Pure C + Pure Lua, no Rust",
   detailed = [[
SubLua is a lightweight, high-performance Polkadot/Substrate SDK for Lua.
Built with Pure C and Pure Lua — no Rust toolchain required.

Features:
- Ed25519 signing (RFC 8032), Blake2b, xxHash — native C crypto
- SS58 address encoding/decoding
- SCALE codec (Pure Lua)
- Transaction builder with dynamic signed extensions
- XCM cross-chain transfers (teleport, reserve transfer)
- RPC client for any Substrate node
- Runtime metadata V14 parser
- Works with Lua 5.1–5.4 and LuaJIT

Perfect for:
- Blockchain-enabled games (LÖVE, Defold, Solar2D, custom engines)
- IoT and embedded devices running Lua
- Server-side Lua (OpenResty, Lapis)
- Any Lua application needing Substrate/Polkadot integration
   ]],
   homepage = "https://github.com/MontaQLabs/sublua",
   license = "MIT",
   maintainer = "Abhiraj Mengade <abhiraj@montaq.org>"
}
dependencies = {
   "lua >= 5.1",
   "luasocket >= 3.0",
   "lua-cjson >= 2.1",
   "luasec >= 1.0"
}
supported_platforms = {
   "linux",
   "macosx",
   "windows"
}
build = {
   type = "builtin",
   modules = {
      -- C module: compiled from source automatically by LuaRocks
      ["sublua.polkadot_crypto"] = {
         sources = {
            "c_src/polkadot_crypto.c",
            "c_src/vendor/monocypher.c",
            "c_src/vendor/xxhash.c",
            "c_src/vendor/tweetnacl.c"
         },
         incdirs = {
            "c_src/vendor"
         },
         defines = {}
      },
      -- Pure Lua modules
      ["sublua"] = "sublua/init.lua",
      ["sublua.scale"] = "sublua/scale.lua",
      ["sublua.keyring"] = "sublua/keyring.lua",
      ["sublua.call"] = "sublua/call.lua",
      ["sublua.transaction"] = "sublua/transaction.lua",
      ["sublua.rpc"] = "sublua/rpc.lua",
      ["sublua.metadata"] = "sublua/metadata.lua",
      ["sublua.xcm"] = "sublua/xcm.lua",
      ["sublua.bytes"] = "sublua/bytes.lua"
   },
   copy_directories = {
      "examples",
      "test"
   }
}
