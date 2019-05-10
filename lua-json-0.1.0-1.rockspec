package = 'lua-json'
version = '0.1.0-1'
source = {
	url = 'git://github.com/neoxic/lua-json.git',
	tag = 'v0.1.0',
}
description = {
	summary = 'JSON encoding/decoding library for Lua',
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
