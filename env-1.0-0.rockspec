package = 'env'
version = '1.0-0'
description = {
	summary = 'Environment & sandbox import utility',
	detailed = [[
		A small environment wrapper that provides an import utility,
		with improved syntax over the standard `require'.
	]],
	homepage = 'https://github.com/okabsd/env',
	maintainer = 'yo@oka.io',
	license = 'MIT'
}
source = {
	url = 'git://github.com/okabsd/env',
	tag = 'v1.0.0'
}
dependencies = {
	'lua >= 5.1'
}
build = {
	type = 'builtin',
	modules = {
		['env'] = 'src/env.lua'
	}
}
