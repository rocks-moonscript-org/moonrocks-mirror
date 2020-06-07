package = 'sinx-lua'
version = '1.0-1'

source = {
	url = 'https://git.sr.ht/~artemis/sinx-lua',
	tag = 'v1.0.1'
}

description = {
	summary = 'A client library to easily pull data from sinx.',
	homepage = 'https://git.sr.ht/~artemis/sinx-lua',
	license = 'Apache-2.0'
}

dependencies = {
	'lua >= 5.1',
	'redis-lua >= 2.0'
}

build = {
	type = 'builtin',
	modules = {
		sinx = 'src/sinx.lua'
	}
}
