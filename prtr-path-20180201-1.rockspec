package = 'prtr-path'
version = '20180201-1'
source = {
	url = 'http://hg.piratery.net/path/get/ff4c698f4d1d1c2d8b11a9d74990b2abc8c44413.tar.gz',
	dir = 'doub-path-ff4c698f4d1d',
}
description = {
	summary = "A simple module to manipulate file paths in Lua.",
	detailed = [[The prtr-path module is a simple Lua module that manipulates file paths. Path objects can be created from strings, and concatenated together using the / operator. Additionally they provide some useful accessors, methods and metamethods.]],
	homepage = 'http://piratery.net/path/',
	license = 'MIT',
}
dependencies = {
	'lua >= 5.1',
}
build = {
	type = 'builtin',
	modules = {
		serial = 'path.lua',
	},
}

-- vi: ft=lua
