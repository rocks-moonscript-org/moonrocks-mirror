package = 'lua-zstd'
version = '0.1.0-4'
source = {
	url = 'git://github.com/neoxic/lua-zstd.git',
	tag = '0.1.0',
}
description = {
	summary = 'Zstandard module for Lua',
	detailed = 'lua-zstd is a binding to the Zstandard C library for Lua.',
	license = 'MIT',
	homepage = 'https://github.com/neoxic/lua-zstd',
	maintainer = 'Arseny Vakhrushev <arseny.vakhrushev@me.com>',
}
dependencies = {
	'lua >= 5.1',
}
external_dependencies = {
	ZSTD = {
		header = 'zstd.h',
		library = 'zstd',
	},
}
build = {
	type = 'builtin',
	modules = {
		zstd = {
			sources = {
				'src/cctx.c',
				'src/cctxparams.c',
				'src/dctx.c',
				'src/main.c',
				'src/util.c',
			},
			incdirs = '$(ZSTD_INCDIR)',
			libdirs = '$(ZSTD_LIBDIR)',
			libraries = 'zstd',
		},
	},
}
