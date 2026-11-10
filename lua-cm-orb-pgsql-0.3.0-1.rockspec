package = 'lua-cm-orb-pgsql'
version = '0.3.0-1'
source = {
	url = 'git+https://codeberg.org/leso-kn/cm-orb',
	tag = 'v0.3.0'
}
description = {
	homepage = 'https://codeberg.org/leso-kn/cm-orb',
	license = 'MIT'
}
dependencies = {
	'lua-hob64 ~> 1',
	'luasql-postgres ~> 2'
}
build = {
	type = 'builtin',
	modules = {
		['cm-orb/pgsql'] = 'cm-orb/pgsql.lua'
	}
}
