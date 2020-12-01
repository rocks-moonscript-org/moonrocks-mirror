rockspec_format = "3.0"
package = "lua-readline"
version = "0.8-1"

description = {
	summary = "Lua libreadline binding",
	detailed = [[
		A libreadline binding for Lua with simple word completion support
	]],
	license = "GPL-3.0",
	homepage = "https://github.com/motoprogger/lua-readline",
	issues_url = "https://github.com/motoprogger/lua-readline/issues",
	maintainer = "Dmitriy Kryuk <kryukdmitriy@rambler.ru>",
}
source = {
	url = "https://github.com/motoprogger/lua-readline.git"
}
external_dependencies = {
	READLINE = {
		library = "readline"
	},
}

build = {
	type = "builtin",
	modules = {
		readline = "readline.c"
	}
}

