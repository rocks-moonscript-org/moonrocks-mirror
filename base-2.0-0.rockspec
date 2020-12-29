package = 'base'
version = '2.0-0'
description = {
	summary = 'Derivative Object-oriented Programming',
	detailed = [[
	This is Yet Another Small Library for Lua,
	providing a foundation for derivative Object-oriented Programming.
	]],
	homepage = 'https://github.com/okabsd/base',
	maintainer = 'yo@oka.io',
	license = 'MIT'
}
source = {
	url = 'git://github.com/okabsd/base',
	tag = 'v2.0.0'
}
dependencies = {
	'lua >= 5.1'
}
build = {
	type = 'builtin',
	modules = {
		['base'] = 'src/base.lua'
	}
}
