package = 'prtr-dump'
version = '20161017-1'
source = {
	url = 'http://hg.piratery.net/dump/get/bc01e6f865133b26179420852544be0e899a13fb.tar.gz',
	dir = 'doub-dump-bc01e6f86513',
}
description = {
	summary = "A simple module to dump a Lua value to a string or a file.",
	detailed = [[The prtr-dump module is a simple Lua module that pretty-prints some Lua values in such a way that they are human-readable, while still being valid Lua source to be reloaded by the Lua interpreter.]],
	homepage = 'http://piratery.net/dump/',
	license = 'MIT',
}
dependencies = {
	'lua >= 5.1',
}
build = {
	type = 'builtin',
	modules = {
		serial = 'dump.lua',
	},
}

-- vi: ft=lua
