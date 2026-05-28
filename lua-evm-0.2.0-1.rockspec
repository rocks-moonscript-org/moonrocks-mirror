rockspec_format = "3.0"

package = "lua-evm"
version = "0.2.0-1"

source = {
  url = "git+https://gitlab.com/NathanTheTerrible/lua-evm.git",
  tag = "v0.2.0",
}

description = {
  summary = "Pure-Lua client for Ethereum and EVM-compatible blockchains",
  detailed = [[
A Lua client for Ethereum, Polygon, Arbitrum, Optimism, Base, BSC,
Avalanche, and any other EVM-compatible JSON-RPC endpoint.

v0.2 adds transaction signing: Legacy (with EIP-155 chain-id protection)
and EIP-1559 transactions, ECDSA via libsecp256k1, RLP encoding,
arbitrary-precision wei arithmetic via libgmp. v0.1's read-only surface
(RPC client, ABI for static types, Keccak-256, EIP-55 addresses) is
unchanged.

Read-only modules run on PUC-Rio Lua 5.1+. The signing path requires
LuaJIT and the system libraries libgmp (pacman -S gmp /
apt install libgmp-dev) and libsecp256k1 (pacman -S libsecp256k1 /
apt install libsecp256k1-dev). evm.signer.AVAILABLE reflects whether
the libsecp256k1 backend loaded.

Zero Lua-side install-time dependencies (no lua-cjson required — JSON
is in-tree). Lua 5.1 users need LuaBitOp ('luarocks install luabitop'
or your distribution's equivalent) since 5.1 has no built-in bitwise
operators; the compat shim picks it up automatically.

CI-verified on Lua 5.1, 5.3, 5.4, LuaJIT 2.1; locally on Lua 5.5.
]],
  homepage = "https://gitlab.com/NathanTheTerrible/lua-evm",
  license = "MIT",
  maintainer = "Nathan Elliott <hlrzobfg@addy.io>",
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
