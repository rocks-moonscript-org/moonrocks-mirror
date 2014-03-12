package = 'Flu'
version = '20121212-1'
source = {
	url = 'http://hg.piratery.net/flu/get/2eff0d56e873a5b4cfa1c775c32a0d9e33ab424f.tar.gz',
	dir = 'doub-flu-2eff0d56e873',
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
