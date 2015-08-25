package = "luaircclient"
version = "1.0-9"
source = {
	url = "https://github.com/DigiTechs/luaircclient/archive/master.zip",
	dir = "luaircclient-master"
}
description = {
	summary = "A simple wrapper around libircclient",
	detailed = [[
		A simple wrapper around libircclient, allowing for simple API
		around an IRC connection.
	]],
	license = "MIT"
}
dependencies = {
	"lua ~> 5.1",
}
external_dependencies = {
	libircclient = {
		library = "ircclient",
		header = "libircclient.h"
	}
}
build = {
	type = "builtin",
	modules = {
		ircclient = {
			sources = {"src/irc.c"},
			libraries = {"ircclient"}
		}
	},
	copy_directores = {
		"doc", "test"
	}
}
