package = "lpty"
version = "1.1-2"
source = {
	url = "http://www.tset.de/downloads/lpty-1.1-1.tar.gz"
}
description = {
	summary = "A simple facility for lua to control other programs via PTYs.",
	detailed = [[
		This is a simple wrapper around unix PTYs. PTYs can be opened, lua
		controls the master side of the PTY. Programs can be started with the
		client side of those PTYs as their controlling terminals.
	]],
	homepage = "http://www.tset.de/lpty/",
	license = "MIT",
	maintainer = "Gunnar Zötl <gz@tset.de>"
}
supported_platforms = {
	"unix"
}
dependencies = {
	"lua >= 5.1, <= 5.3"
}

build = {
	type = "make",
	copy_directories = { 'doc', 'samples' },
	build_variables = {
			CFLAGS="$(CFLAGS)",
			LIBFLAG="$(LIBFLAG)",
			LUA_LIBDIR="$(LUA_LIBDIR)",
			LUA_BINDIR="$(LUA_BINDIR)",
			LUA_INCDIR="$(LUA_INCDIR)",
	},
	install_variables = {
			INST_PREFIX="$(PREFIX)",
			INST_LIBDIR="$(LIBDIR)",
			INST_LUADIR="$(LUADIR)",
			INST_CONFDIR="$(CONFDIR)",
	},
}
