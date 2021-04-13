package = 'lua-ezlib'
version = '1.0.0-2'
source = {
	url = 'git://github.com/neoxic/lua-ezlib.git',
	tag = '1.0.0',
}
description = {
	summary = 'Easy zlib module for Lua',
	license = 'MIT',
	homepage = 'https://github.com/neoxic/lua-ezlib',
	maintainer = 'Arseny Vakhrushev <arseny.vakhrushev@me.com>',
}
dependencies = {
	'lua >= 5.1',
}
external_dependencies = {
	ZLIB = {
		header = 'zlib.h',
		library = 'z',
	},
}
build = {
	type = 'builtin',
	modules = {
		ezlib = {
			sources = 'ezlib.c',
			incdirs = '$(ZLIB_INCDIR)',
			libdirs = '$(ZLIB_LIBDIR)',
			libraries = 'z',
		},
	},
}
