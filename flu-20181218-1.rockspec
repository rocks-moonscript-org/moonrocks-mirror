package = 'Flu'
version = '20181218-1'
source = {
	url = 'http://hg.piratery.net/flu/get/63f077a988cd43d4dfe4637aacf8ae91252c4f3d.tar.gz',
	dir = 'doub-flu-63f077a988cd',
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
		header = 'sys/xattr.h',
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
