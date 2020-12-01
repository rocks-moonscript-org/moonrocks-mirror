rockspec_format = "3.0"
package = "luasvc"
version = "0.9-0"

description = {
	summary = "Lua service (daemon) wrapper",
	detailed = [[
		A standalone program to run specially written Lua scripts as UNIX daemons. It allows for graceful shutdown on SIGTERM or SIGINT signals.
	]],
	license = "MIT",
	homepage = "https://github.com/motoprogger/luasvc",
	issues_url = "https://github.com/motoprogger/luasvc/issues",
	maintainer = "Dmitriy Kryuk <kryukdmitriy@rambler.ru>",
}
supported_platforms = {"unix"}
source = {
	url = "git+https://github.com/motoprogger/luasvc.git"
}
build = {
	type = "make",
	build_variables = {
		CFLAGS="$(CFLAGS)",
		LUA_LIBDIR="$(LUA_LIBDIR)",
		LUA_INCDIR="$(LUA_INCDIR)",
		LUALIB="$(LUALIB)",
	},
	install = {
		bin = {
			luasvc = "luasvc"
		}
	}
}

