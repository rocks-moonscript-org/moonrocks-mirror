package = "setuid"
version = "1.0-1"

source = {
	url = "git://github.com/mikejsavage/lua-setuid.git",
}

description = {
	summary = "A Lua wrapper around setuid/chroot",
	homepage = "http://github.com/mikejsavage/lua-setuid",
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
			[ "setuid" ] = "setuid.so",
		},
	},
}
