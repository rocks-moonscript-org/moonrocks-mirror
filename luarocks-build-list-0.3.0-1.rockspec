package = 'luarocks-build-list'
version = '0.3.0-1'
source = {
	url = 'git+https://codeberg.org/leso-kn/luarocks-build-list',
	tag = 'v0.3.0'
}
description = {
	summary = 'Chain multiple luarocks build-backends together',
	homepage = 'https://codeberg.org/leso-kn/luarocks-build-list',
	license = 'MIT'
}
build = {
	type = 'builtin',
	modules = {
		['luarocks.build.list'] = 'src/luarocks/build/list.lua'
	}
}
