package = 'lunary-optim'
version = '20181002-1'
source = {
	url = 'http://hg.piratery.net/lunary/get/e1b88307e7e407012c75a7963c9c12a371e2658f.tar.gz',
	dir = 'doub-lunary-e1b88307e7e4',
}
description = {
	summary = "Optimizations for Lunary.",
	detailed = [[Lunary is a framework to read and write structured binary data from and to files or network connections. This rock provides faster implementation of some of the built-in datatypes of Lunary.]],
	homepage = 'http://piratery.net/lunary/',
	license = 'MIT',
}
dependencies = {
	'lua ~> 5.1',
	'lunary-core 20181002-1',
}
build = {
	type = 'builtin',
	modules = {
		['serial.optim'] = {
			sources = { 'serial/optim.c', 'compat.c' },
			defines = {
				'LUAMOD_API=LUALIB_API',
				'luaopen_module=luaopen_serial_optim',
			},
		},
	},
}

-- vi: ft=lua
