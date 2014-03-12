package = 'lunary-optim'
version = '20121108-1'
source = {
	url = 'http://hg.piratery.net/lunary/get/e7a3ad8efa5f86f8621c0ffcc7e57ee6e6dd8e1f.tar.gz',
	dir = 'doub-lunary-e7a3ad8efa5f',
}
description = {
	summary = "Optimizations for Lunary.",
	detailed = [[Lunary is a framework to read and write structured binary data from and to files or network connections. This rock provides faster implementation of some of the built-in datatypes of Lunary.]],
	homepage = 'http://piratery.net/lunary/',
	license = 'MIT',
}
dependencies = {
	'lua ~> 5.1',
	'lunary-core 20121108-1',
}
build = {
	type = 'builtin',
	modules = {
		['serial.optim'] = {
			sources = { 'serial/optim.c' },
			defines = {
				'LUAMOD_API=LUALIB_API',
				'luaopen_module=luaopen_serial_optim',
			},
		},
	},
}

-- vi: ft=lua
