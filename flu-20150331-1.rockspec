package = 'Flu'
version = '20150331-1'
source = {
	url = 'http://hg.piratery.net/flu/get/a7daae9863397d186a48d1c2afe10f289fad93a5.tar.gz',
	dir = 'doub-flu-a7daae986339',
}
description = {
	summary = "Filesystems in Lua Userspace.",
	homepage = 'http://piratery.net/flu/',
	license = 'MIT',
}
external_dependencies = {
	FUSE = {
		library = 'fuse',
	},
	ATTR = {
		header = 'attr/xattr.h',
	},
}
dependencies = {
	'lua >= 5.1, < 6',
}
build = {
	type = 'builtin',
	modules = {
		['flu'] = {
			sources = {
				'flu.c',
				'errno.c',
				'posix_structs.c',
				'compat.c',
			},
			defines = {
				'FUSE_USE_VERSION=26',
				'FLU_API=LUALIB_API',
				'luaopen_module=luaopen_flu',
			},
			libraries = {
				'fuse',
			},
			libdirs = {
				'$(FUSE_LIBDIR)',
			},
			incdirs = {
				'$(FUSE_INCDIR)',
				'$(ATTR_INCDIR)',
			},
		},
	},
}

-- vi: ft=lua
