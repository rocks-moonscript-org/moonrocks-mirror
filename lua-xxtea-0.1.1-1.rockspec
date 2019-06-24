package = 'lua-xxtea'
version = '0.1.1-1'
source = {
	url = 'git://github.com/neoxic/lua-xxtea.git',
	tag = 'v0.1.1',
}
description = {
	summary = 'XXTEA encryption/decryption module for Lua',
	license = 'MIT',
	homepage = 'https://github.com/neoxic/lua-xxtea',
	maintainer = 'Arseny Vakhrushev <arseny.vakhrushev@gmail.com>',
}
dependencies = {
	'lua >= 5.1',
}
build = {
	type = 'builtin',
	modules = {
		xxtea = {
			sources = {
				'xxtea.c',
			},
		},
	},
}
