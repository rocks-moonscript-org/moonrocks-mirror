package = 'Flu'
version = '20101020-1'
source = {
	url = 'http://hg.piratery.net/flu/archive/30dbbc0c3b5817ccfe8193b4efceacaddeede0e6.tar.gz',
	dir = 'flu-30dbbc0c3b5817ccfe8193b4efceacaddeede0e6',
}
description = {
	summary = "Filesystems in Lua Userspace.",
	detailed = [[
Flu is a Lua binding for FUSE, which is a library allowing creation filesystem
drivers run in userspace. Flu is a high level binding, using basic Lua types
rather than userdata whenever possible.
	]],
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
