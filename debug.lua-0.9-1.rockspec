package = "debug.lua"
version = "0.9-1"
source = {
	url = "http://www.tset.de/downloads/debug.lua-0.9-1.tar.gz"
}
description = {
	summary = "A terminal based standalone frontend for mobdebug.",
	detailed = [[
		debug.lua is a terminal based standalone frontend for mobdebug.
		Because it is terminal based, it is navigated only with the
		keyboard, but it does feature source navigation and a display
		for expressions that change as you step through the source.
	]],
	homepage = "http://www.tset.de/debug.lua/",
	license = "MIT",
	maintainer = "Gunnar Zötl <gz@tset.de>"
}
supported_platforms = {
	"unix"
}
dependencies = {
	"lua >= 5.1, < 5.3",
	"termfx >= 0.6",
	"mobdebug >= 0.55"
}

build = {
	type = "builtin",
	modules = {},
	install = {
		bin = {
			'debug.lua'
		}
	},
	copy_directories = { 'doc' },
}
