package = 'lrocket-build-wasm'
version = '0.2.1-1'
source = {
	url = 'git+https://codeberg.org/leso-kn/lrocket-build-wasm.git',
	tag = 'v0.2.1'
}
description = {
	summary = 'WebAssembly build plugin for the LRocket compiler',
	homepage = 'https://codeberg.org/leso-kn/lrocket-build-wasm',
	license = 'MIT'
}
build = {
	type = 'builtin',
	modules = {
		['lrocket.build.wasm-html'] = 'lrocket/build/wasm-html.lua',
		['lrocket.build.wasm-js'] = 'lrocket/build/wasm-js.lua',
		['lrocket.build.wasm'] = 'lrocket/build/wasm.lua',
		['lrocket.targetrules.50-wasm-toolchain'] = 'lrocket/targetrules/50-wasm-toolchain.lua',
		['lrocket.toolchain.wasm'] = 'lrocket/toolchain/wasm.lua'
	},
	install = {
		bin = {
			['wasm-nold'] = 'cmd/wasm-nold.lua'
		}
	}
}
dependencies = {
	'base64mix = 1.0.0',
	'lrc',
	'lua-wasm32',
	'luarocks-cross'
}
