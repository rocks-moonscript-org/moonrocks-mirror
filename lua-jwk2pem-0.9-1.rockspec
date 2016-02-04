package = "lua-jwk2pem"
version = "0.9-1"
source = {
	url = "hg+http://code.zash.se/lua-jwk2pem/",
	tag = "e5f04779847c"
}
description = {
	summary = "Convert private keys from JWK format to PEM",
	homepage = "http://code.zash.se/lua-jwk2pem/",
	license = "MIT/X11"
}
dependencies = {}
build = {
	type = "builtin",
	modules = {
		jwk2pem = "jwk2pem.lua"
	},
	install = {
		bin = {
			"jwk2pem"
		}
	}
}
