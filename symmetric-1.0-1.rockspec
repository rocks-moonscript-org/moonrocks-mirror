package = "symmetric"
version = "1.0-1"

source = {
	url = "git://github.com/mikejsavage/lua-symmetric.git",
	tag = "v1.0",
}

description = {
	summary = "A Lua wrapper for symmetric cryptography, using libsodium's secret box",
	homepage = "http://github.com/mikejsavage/lua-symmetric",
	license = "MIT",
	maintainer = "Mike Savage",
}

dependencies = {
	"lua >= 5.1",
}

build = {
	type = "make",

	install_pass = false,

	build_variables = {
		LUA_INCDIR = "$(LUA_INCDIR)",
	},

	install = {
		lib = {
			[ "symmetric" ] = "symmetric.so",
		},
	},
}
