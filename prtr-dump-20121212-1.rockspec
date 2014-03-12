package = 'prtr-dump'
version = '20121212-1'
source = {
	url = 'http://hg.piratery.net/dump/get/f412db97ffcbac65a3ff21d2c99b563414499639.tar.gz',
	dir = 'doub-dump-f412db97ffcb',
}
description = {
	summary = "A simple module to dump a Lua value to a string or a file.",
	detailed = [[The prtr-dump module is a simple Lua module that pretty-prints some Lua values in such a way that they are human-readable, while still being valid Lua source to be reloaded by the Lua interpreter.]],
	homepage = 'http://piratery.net/dump/',
	license = 'MIT',
}
dependencies = {
	'lua ~> 5.1',
}
build = {
	type = 'builtin',
	modules = {
		serial = 'dump.lua',
	},
}

-- vi: ft=lua
