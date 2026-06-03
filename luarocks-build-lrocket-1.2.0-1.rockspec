package = 'luarocks-build-lrocket'
version = '1.2.0-1'
source = {
	url = 'https://codeberg.org/lrocket/luarocks-build-lrocket/archive/main.zip',
	tag = 'v1.2.0',
	dir = 'luarocks-build-lrocket'
}
description = {
	homepage = 'https://codeberg.org/lrocket/luarocks-build-lrocket',
	license = 'MIT'
}
dependencies = {
	'luarocks-build-lr-hooks ~> 2'
}
build = {
	type = 'lr-hooks',
	modules = {
		['lrocket.luarocks.helpers'] = 'lrocket/luarocks/helpers.lua',
		['lrocket.luarocks.rust-support'] = 'lrocket/luarocks/rust-support.lua',
		['luarocks.build.lrocket'] = 'luarocks/build/lrocket.lua',
		['luarocks.hooks.50-lrocket-build'] = 'luarocks/hooks/hook-build.lua'
	}
}
