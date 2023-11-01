package = "scrypt"
version = "0.1.0-0"

source = {
 url = "git+ssh://git@github.com/Propagram/lua-scrypt.git",
 branch = "main"
}

description = {
 summary = "Pure Lua Scrypt KDF",
 detailed = [[
Scrypt is a KDF (Key Derivation Function) designed for password storage by Colin Percival to be resistant against hardware-assisted attackers by having a tunable memory cost. It is described in RFC 7914.
]],
 homepage = "https://github.com/Propagram/lua-scrypt",
 maintainer = "Evandro C.",
 license = "MIT"
}

dependencies = {
  "lockbox"
}

build = {
 type = "builtin",
 modules = {
  ["scrypt"] = "scrypt.lua",
 }
}