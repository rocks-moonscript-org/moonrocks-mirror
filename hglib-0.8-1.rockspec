package = 'hglib'
version = '0.8-1'
source = {
	url = 'https://bitbucket.org/av6/lua-hglib/get/0.8.tar.bz2',
	file = 'av6-lua-hglib-e11df013b0a0.tar.bz2'
}
description = {
	summary = 'Mercurial command server client library.',
	detailed = [[
		A pure-Lua library for interacting with Mercurial's command server.
		It's useful for Lua applications that want to get all kinds of
		repository data fast. Compared to the usual way of executing multiple
		`hg command`, this library skips the overhead of starting up a new
		process every time.
	]],
	homepage = 'https://bitbucket.org/av6/lua-hglib',
	license = 'MIT'
}

dependencies = {
	'lpc ~> 1.0.0',
	-- lpc seems to be 5.1-only (contrary to what its rockspec says), at least
	-- until https://github.com/LuaDist/lpc/pull/1 is merged, for example.
	-- Since hglib is depending on it, it's also 5.1-only at the moment.
	'lua ~> 5.1'
}

build = {
	type = 'builtin',
	modules = {
		hglib = 'hglib.lua'
	},
	copy_directories = { 'examples', 'spec' }
}
