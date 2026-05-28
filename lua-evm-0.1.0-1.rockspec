rockspec_format = "3.0"

package = "lua-evm"
version = "0.1.0-1"

source = {
  url = "git+https://gitlab.com/NathanTheTerrible/lua-evm.git",
  tag = "v0.1.0",
}

description = {
  summary = "Pure-Lua client for Ethereum and EVM-compatible blockchains",
  detailed = [[
A pure-Lua client for Ethereum, Polygon, Arbitrum, Optimism, Base, BSC,
Avalanche, and any other EVM-compatible JSON-RPC endpoint.

v0.1 is read-only: RPC client, ABI encode/decode for static types,
function selectors, transaction receipts, EIP-55 addresses, Keccak-256
from scratch. Transaction signing arrives in v0.2.

Zero install-time dependencies (no lua-cjson required — JSON is in-tree).
Lua 5.1 users need LuaBitOp ('luarocks install luabitop' or your
distribution's equivalent) since 5.1 has no built-in bitwise operators;
the compat shim picks it up automatically.

CI-verified on Lua 5.1, 5.3, 5.4, LuaJIT 2.1; locally on Lua 5.5.
]],
  homepage = "https://gitlab.com/NathanTheTerrible/lua-evm",
  license = "MIT",
  maintainer = "Nathan Elliott <hlrzobfg@addy.io>",
  labels = { "ethereum", "evm", "blockchain", "rpc", "keccak", "abi" },
}

dependencies = {
  "lua >= 5.1",
}

-- Note: Lua 5.1 users must install LuaBitOp separately:
--   luarocks install --lua-version=5.1 luabitop
-- It's not listed as a hard dependency because Lua 5.2+ doesn't need it,
-- and rockspecs can't express "depend on X only on Lua version Y".

build = {
  type = "builtin",
  modules = {
    ["evm"]            = "src/evm.lua",
    ["evm.compat"]     = "src/evm/compat.lua",
    ["evm.hex"]        = "src/evm/hex.lua",
    ["evm.keccak"]     = "src/evm/keccak.lua",
    ["evm.address"]    = "src/evm/address.lua",
    ["evm.abi"]        = "src/evm/abi.lua",
    ["evm.transport"]  = "src/evm/transport.lua",
    ["evm.json"]       = "src/evm/json.lua",
    ["evm.rpc"]        = "src/evm/rpc.lua",
    ["evm.chains"]     = "src/evm/chains.lua",
    ["evm.client"]     = "src/evm/client.lua",
    ["evm.signer"]     = "src/evm/signer.lua",
  },
  copy_directories = { "examples" },
}
