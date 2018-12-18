package = 'prtr-test'
version = '20151116-1'
source = {
	url = 'http://hg.piratery.net/test/get/b610dc24cc4df55782db843c333ca7b5b615ed7f.tar.gz',
	dir = 'doub-test-b610dc24cc4d',
}
description = {
	summary = "A simple module to help in writing Lua modules self-tests.",
	detailed = [[The prtr-test module is a simple Lua module that defines a global 'expect' function, similar to 'assert' but that takes one more initial parameter, an expected value, that the actual tested value must match (rather than just being true as is the case of 'assert').]],
	homepage = 'http://piratery.net/test/',
	license = 'MIT',
}
dependencies = {
	'lua ~> 5.1',
}
build = {
	type = 'builtin',
	modules = {
		serial = 'test.lua',
	},
}

-- vi: ft=lua
