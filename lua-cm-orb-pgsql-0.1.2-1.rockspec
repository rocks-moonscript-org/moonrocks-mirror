package = 'lua-cm-orb-pgsql'
version = '0.1.2-1'
source = {
	url = 'git+https://codeberg.org/leso-kn/cm-orb',
	tag = 'v0.1.2-pgsql'
}
description = {
	homepage = 'https://codeberg.org/leso-kn/cm-orb',
	license = 'MIT'
}
dependencies = {
	'base64mix ~> 1',
	'luasql-postgres ~> 2'
}
build = {
	type = 'builtin',
	modules = {
		['cm-orb/pgsql'] = 'cm-orb/pgsql.lua'
	}
}
