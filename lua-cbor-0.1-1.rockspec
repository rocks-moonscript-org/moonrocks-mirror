package = "lua-cbor"
version = "0.1-1"
source = {
	url = "hg+http://code.zash.se/lua-cbor/",
	tag = "766b4a773118",
}
description = {
	summary = "Pure Lua CBOR / RFC 7049 implementation",
	detailed = [[
Lua-CBOR is a (mostly) pure Lua implementation of the CBOR, a compact
data serialization format, defined in RFC 7049. It supports Lua 5.1
until 5.3 and will utilize struct packing and bitwise operations if
available.]],
	homepage = "https://www.zash.se/lua-cbor.html",
	license = "MIT/X11",
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "builtin",
	modules = {
		cbor = "cbor.lua",
		["cbor.bignum"] = "cbor.bignum.lua";
	},
}

-- vim: syntax=lua :

