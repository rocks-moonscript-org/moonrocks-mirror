package = 'luadbc'
version = '1.14-0'
description = {
	summary = 'Parser for WoW\'s DB2 files.',
	detailed = 'LuaDBC is a parser for WoW\'s DB2 files implemented in Lua.',
	homepage = 'https://www.townlong-yak.com/dbc/',
	license = 'Artistic-2.0',
}
source = {
	url = 'https://www.townlong-yak.com/dbc/files/luadbc-1.14.zip',
	md5 = '38993f378171f146199e1f0278b89bdf',
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
		['dbc.headers.db2'] = 'dbc/headers/db2.lua',
		['dbc.headers.db5_6'] = 'dbc/headers/db5_6.lua',
		['dbc.headers.dbc'] = 'dbc/headers/dbc.lua',
		['dbc.headers.dc1_2'] = 'dbc/headers/dc1_2.lua',
		['dbc.headers.db3_4'] = 'dbc/headers/dc3_4.lua',
	},
}