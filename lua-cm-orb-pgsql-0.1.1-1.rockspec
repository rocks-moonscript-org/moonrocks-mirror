package = 'lua-cm-orb-pgsql'
version = '0.1.1-1'
source = {
	url = 'git+https://codeberg.org/leso-kn/cm-orb',
	tag = 'v0.1.1-pgsql'
}
description = {
	homepage = 'https://codeberg.org/leso-kn/cm-orb',
	license = 'MIT'
}
dependencies = {
	'luabase64 ~> 0',
	'luasql-postgres ~> 2'
}
build = {
	type = 'builtin',
	modules = {
		['cm-orb/pgsql'] = 'cm-orb/pgsql.lua'
	}
}
