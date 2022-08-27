package = "lua-cbor"
version = "1.0.0-1"
source = {
   url = "https://code.zash.se/dl/lua-cbor/lua-cbor-1.0.0.tar.gz",
   tag = "1.0.0"
}
description = {
   summary = "Pure Lua CBOR / RFC 7049 implementation",
   detailed = [[
Lua-CBOR is a (mostly) pure Lua implementation of the CBOR, a compact
data serialization format, defined in RFC 7049. It supports Lua 5.1
until 5.4 and will utilize struct packing and bitwise operations if
available.]],
   homepage = "https://www.zash.se/lua-cbor.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      cbor = "cbor.lua",
      ["cbor.bignum"] = "cbor.bignum.lua"
   }
}
