package = 'luadbc'
version = '1.13-0'
description = {
	summary = 'Parser for WoW\'s DB2 files.',
	detailed = 'LuaDBC is a parser for WoW\'s DB2 files implemented in Lua.',
	homepage = 'https://www.townlong-yak.com/dbc/',
	license = 'Artistic-2.0',
}
source = {
	url = 'https://www.townlong-yak.com/casc/files/luadbc-1.13.zip',
	md5 = 'eb4a0be57fea641254555a1b724800b7',
	dir = 'luadbc',
}
dependencies = {
	'lua >= 5.1',
}
build = {
	type = 'builtin',
	modules = {
		['dbc'] = 'dbc/init.lua',
		['dbc.bin'] = 'dbc/bin.lua',
	},
}