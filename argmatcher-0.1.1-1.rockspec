package = 'argmatcher'
version = '0.1.1-1'
source = {
	url = 'git://github.com/gilzoide/argmatcher',
}
description = {
	summary = "Simple command line argument matcher for Lua",
	detailed = [[
A simple command line argument matcher for Lua.
]],
	license = 'LGPLv3',
	maintainer = 'gilzoide <gilzoide@gmail.com>'
}
dependencies = {
	'lua >= 5.1',
}
build = {
	type = 'builtin',
	modules = {
		argmatcher = 'argmatcher.lua'
	}
}
