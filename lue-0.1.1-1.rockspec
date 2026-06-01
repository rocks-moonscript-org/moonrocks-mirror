package = 'lue'
version = '0.1.1-1'
source = {
	url = 'git+https://codeberg.org/leso-kn/lue',
	tag = 'v0.1.1'
}
description = {
	summary = 'Lightweight Vue bundler and web package manager',
	homepage = 'https://codeberg.org/leso-kn/lue',
	license = 'MIT'
}
build = {
	type = 'lrocket',
	entrypoint = 'lue/main.lua',
	exclude = {
		'compat53.utf8'
	},
	output = 'bin/lue'
}
dependencies = {
	'argparse ~> 0.7',
	'compat53 ~> 0.14',
	'lua-cjson ~> 2',
	'luafilesystem ~> 1',
	'luasec ~> 1',
	'sass ~> 0.1',
	'semver ~> 1',
	'xmlpeg ~> 0.4'
}
