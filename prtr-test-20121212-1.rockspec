package = 'prtr-test'
version = '20121212-1'
source = {
	url = 'http://hg.piratery.net/test/get/7dbd30b45b00486eb3e2722c5a8294d643a4a4c3.tar.gz',
	dir = 'doub-test-7dbd30b45b00',
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
