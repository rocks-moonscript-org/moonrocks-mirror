package = 'prtr-path'
version = '20121107-1'
source = {
	url = 'http://hg.piratery.net/path/get/7ee34f49972b9eb01291a8c7e16bd2c7b36ad007.tar.gz',
	dir = 'doub-path-7ee34f49972b',
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
