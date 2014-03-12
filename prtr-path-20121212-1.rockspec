package = 'prtr-path'
version = '20121212-1'
source = {
	url = 'http://hg.piratery.net/path/get/1921044d53622e6a0491a0fc515ce9c644c370d4.tar.gz',
	dir = 'doub-path-1921044d5362',
}
description = {
	summary = "A simple module to manipulate file paths in Lua.",
	detailed = [[The prtr-path module is a simple Lua module that manipulates file paths. Path objects can be created from strings, and concatenated together using the / operator. Additionally they provide some useful accessors, methods and metamethods.]],
	homepage = 'http://piratery.net/path/',
	license = 'MIT',
}
dependencies = {
	'lua ~> 5.1',
}
build = {
	type = 'builtin',
	modules = {
		serial = 'path.lua',
	},
}

-- vi: ft=lua
