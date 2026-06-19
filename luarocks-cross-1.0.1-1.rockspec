package = 'luarocks-cross'
version = '1.0.1-1'
source = {
	url = 'git+https://codeberg.org/lrocket/luarocks-cross',
	tag = 'v1.0.1'
}
description = {
	summary = 'Adds cross-build support to luarocks. Part of the LRocket Project',
	homepage = 'https://lrocket.codeberg.page/cross-compilation.html',
	license = 'MIT'
}
build = {
	type = 'lr-hooks',
	modules = {
		['luarocks-cross.build'] = 'luarocks-cross/build.lua',
		['luarocks-cross.cli'] = 'luarocks-cross/cli.lua',
		['luarocks-cross.install'] = 'luarocks-cross/install.lua',
		['luarocks-cross.state'] = 'luarocks-cross/state.lua',
		['luarocks-cross.utils'] = 'luarocks-cross/utils.lua',
		['luarocks.hooks.51-cross'] = 'luarocks/hooks/hook-cross.lua'
	}
}
