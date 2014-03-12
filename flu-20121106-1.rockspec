package = 'Flu'
version = '20121106-1'
source = {
	url = 'http://hg.piratery.net/flu/get/cc8649079e3a29ec95a5fe8afbe156c8bd016ccd.tar.gz',
	dir = 'doub-flu-cc8649079e3a',
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
	'lua ~> 5.1',
}
build = {
	type = 'builtin',
	modules = {
		['flu'] = {
			sources = {
				'flu.c',
				'errno.c',
				'posix_structs.c',
			},
			defines = {
				'FUSE_USE_VERSION=26',
				'LUAMOD_API=LUALIB_API',
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
