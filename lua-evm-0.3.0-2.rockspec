rockspec_format = "3.0"

package = "lua-evm"
version = "0.3.0-2"

source = {
  url = "git+https://gitlab.com/NathanTheTerrible/lua-evm.git",
  tag = "v0.3.0",
}

description = {
  summary = "Pure-Lua client for Ethereum and EVM-compatible blockchains",
  detailed = [[
A pure-Lua client for Ethereum and any EVM-compatible chain — Polygon,
Arbitrum, Optimism, Base, BSC, Avalanche, and other EVM JSON-RPC endpoints.

A JSON-RPC client (with batching), ABI encode/decode for static and dynamic
types plus event-log decoding, RLP, EIP-55 addresses, Keccak-256, and
transaction signing (Legacy/EIP-155, EIP-1559, EIP-2930) with
arbitrary-precision wei arithmetic.

Read-only use is pure Lua with no install-time dependencies (JSON is
in-tree) and runs on PUC-Rio Lua 5.1+ (Lua 5.1 also needs LuaBitOp).
Signing requires LuaJIT plus the libgmp and libsecp256k1 system libraries;
evm.signer.AVAILABLE reports whether that backend loaded.
]],
  homepage = "https://gitlab.com/NathanTheTerrible/lua-evm",
  license = "MIT",
  maintainer = "Nathan Elliott <38136612-NathanTheTerrible@users.noreply.gitlab.com>",
  labels = { "ethereum", "evm", "blockchain", "rpc", "keccak", "abi", "signing", "rlp" },
}

dependencies = {
  "lua >= 5.1",
}

-- Note: Lua 5.1 users must install LuaBitOp separately:
--   luarocks install --lua-version=5.1 luabitop
-- The libgmp / libsecp256k1 system dependencies for signing are not
-- expressible in a rockspec; see README for distro install commands.

build = {
  type = "builtin",
  modules = {
    ["evm"]             = "src/evm.lua",
    ["evm.compat"]      = "src/evm/compat.lua",
    ["evm.hex"]         = "src/evm/hex.lua",
    ["evm.keccak"]      = "src/evm/keccak.lua",
    ["evm.address"]     = "src/evm/address.lua",
    ["evm.abi"]         = "src/evm/abi.lua",
    ["evm.transport"]   = "src/evm/transport.lua",
    ["evm.json"]        = "src/evm/json.lua",
    ["evm.rpc"]         = "src/evm/rpc.lua",
    ["evm.chains"]      = "src/evm/chains.lua",
    ["evm.client"]      = "src/evm/client.lua",
    ["evm.rlp"]         = "src/evm/rlp.lua",
    ["evm.bigint"]      = "src/evm/bigint.lua",
    ["evm.secp256k1"]   = "src/evm/secp256k1.lua",
    ["evm.signer"]      = "src/evm/signer.lua",
    ["evm.transaction"] = "src/evm/transaction.lua",
  },
  copy_directories = { "examples" },
}
