package = 'lua-timescaledb'
version = '0.1.0-1'
source = {
	url = 'git+https://codeberg.org/leso-kn/lua-timescaledb',
	tag = 'v0.1.0'
}
description = {
	homepage = 'https://codeberg.org/leso-kn/lua-timescaledb',
	summary = 'A Lua library for interacting with timescaledb',
	license = 'MIT'
}
build = {
	type = 'builtin',
	modules = {
		timescaledb = 'timescaledb.lua'
	}
}
dependencies = {
	'luasql-postgres ~> 2'
}
