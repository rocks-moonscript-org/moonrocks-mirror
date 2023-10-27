package = 'luacasc'
version = '1.16-0'
description = {
	summary = 'Read-only CASC file system implementation.',
	detailed = 'LuaCASC is an implementation of the CASC file system in Lua, capable of reading from local installations and/or CDN-hosted data.',
	homepage = 'https://www.townlong-yak.com/casc/',
	license = 'Artistic-2.0',
}
source = {
	url = 'https://www.townlong-yak.com/casc/files/luacasc-1.16.zip',
	md5 = 'b6f40b7ad4555575a9811bcf8683abf9',
	dir = 'luacasc',
}
dependencies = {
	'lua >= 5.1',
	'luabitop',
	'luafilesystem',
	'luasocket',
	'lzlib',
	'md5',
}
build = {
	type = 'builtin',
	modules = {
		['casc'] = 'casc/init.lua',
		['casc.bin'] = 'casc/bin.lua',
		['casc.binc'] = 'casc/bin.c',
		['casc.blte'] = 'casc/blte.lua',
		['casc.bspatch'] = 'casc/bspatch.lua',
		['casc.dbc'] = 'casc/dbc.lua',
		['casc.encoding'] = 'casc/encoding.lua',
		['casc.install'] = 'casc/install.lua',
		['casc.jenkins96'] = 'casc/jenkins96.lua',
		['casc.md5'] = 'casc/md5.lua',
		['casc.platform'] = 'casc/platform.lua',
		['casc.platform-fallback.guess'] = 'casc/platform-fallback/guess.lua',
		['casc.platform-fallback.unix'] = 'casc/platform-fallback/unix.lua',
		['casc.platform-fallback.windows'] = 'casc/platform-fallback/windows.lua',
		['casc.ribbit'] = 'casc/ribbit.lua',
		['casc.root'] = 'casc/root.lua',
	},
}