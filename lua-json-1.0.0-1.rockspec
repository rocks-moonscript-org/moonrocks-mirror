package = 'lua-json'
version = '1.0.0-1'
source = {
	url = 'git://github.com/neoxic/lua-json.git',
	tag = '1.0.0',
}
description = {
	summary = 'JSON encoding/decoding module for Lua',
	detailed = [[
		lua-json provides fast JSON encoding/decoding routines for Lua:
		- Support for inline data transformation/filtering via metamethods/handlers.
		- Written in C with 32/64-bit awareness.
		- No external dependencies.
	]],
	license = 'MIT',
	homepage = 'https://github.com/neoxic/lua-json',
	maintainer = 'Arseny Vakhrushev <arseny.vakhrushev@gmail.com>',
}
dependencies = {
	'lua >= 5.1',
}
build = {
	type = 'builtin',
	modules = {
		json = {
			sources = {
				'src/json.c',
				'src/json-encode.c',
				'src/json-decode.c',
			},
		},
	},
}
