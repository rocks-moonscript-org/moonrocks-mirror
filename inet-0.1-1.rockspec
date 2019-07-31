rockspec_format = "3.0"
package = 'inet'
version = '0.1-1'
source = {
	url = 'https://git.2e8.dk/lua-inet/snapshot/lua-inet_0.1.tar.gz',
}
description = {
	summary = 'an IP address mangling library',
	homepage = 'https://git.2e8.dk/lua-inet/about/',
	labels = { 'network', 'math' },
	license = 'GNU LGPL v3',
}
dependencies = {
	'lua >= 5.2, < 5.5',
	'lpeg >= 0.8.1',
}
build = {
	type = 'builtin',
	modules = {
		['inet'] = 'lua/inet/init.lua',
		['inet.bitops'] = 'lua/inet/bitops/init.lua',
		['inet.bitops.native'] = 'lua/inet/bitops/native.lua',
		['inet.common'] = 'lua/inet/common.lua',
		['inet.core'] = 'lua/inet/core.lua',
		['inet.set'] = 'lua/inet/set.lua',
	},
}
