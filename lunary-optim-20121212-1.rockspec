package = 'lunary-optim'
version = '20121212-1'
source = {
	url = 'http://hg.piratery.net/lunary/get/20d192874d252c12fb2b003a696aeec88c8a69b8.tar.gz',
	dir = 'doub-lunary-20d192874d25',
}
description = {
	summary = "Optimizations for Lunary.",
	detailed = [[Lunary is a framework to read and write structured binary data from and to files or network connections. This rock provides faster implementation of some of the built-in datatypes of Lunary.]],
	homepage = 'http://piratery.net/lunary/',
	license = 'MIT',
}
dependencies = {
	'lua ~> 5.1',
	'lunary-core 20121212-1',
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
