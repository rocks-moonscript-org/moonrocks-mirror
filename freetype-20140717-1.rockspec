package = 'freetype'
version = '20140717-1'
source = {
	url = 'http://hg.piratery.net/luafreetype/get/bf35e15f44bb8f5525455513d9757ac8c8e535ee.tar.gz',
	dir = 'doub-luafreetype-bf35e15f44bb',
}
description = {
	summary = "A low level binding to the FreeType library.",
	detailed = [[FreeType is a library to read and rasterize font files. This module is a thin wrapper around FreeType's C API.]],
	homepage = 'http://piratery.net/luafreetype/',
	license = 'MIT',
}
dependencies = {
	'lua >= 5.1, <= 5.2',
}
external_dependencies = {
	freetype2 = { header = 'freetype2/ft2build.h' },
}
build = {
	type = 'builtin',
	modules = {
		freetype = {
			sources = { 'freetype.cc', 'compat.c' },
			incdirs = { '/usr/include/freetype2' },
			libraries = { 'freetype' },
			defines = {
				'LUAFREETYPE_API=',
				'luaopen_module=luaopen_freetype',
			},
		},
	},
}

-- vi: ft=lua
