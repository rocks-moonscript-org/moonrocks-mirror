package = 'lrocket-build-wasm'
version = '0.1.0-2'
source = {
	url = 'git+https://codeberg.org/leso-kn/lrocket-build-wasm.git',
	tag = 'v0.1.0-2'
}
description = {
	summary = 'WebAssembly build plugin for the LRocket compiler',
	homepage = 'https://codeberg.org/leso-kn/lrocket-build-wasm',
	license = 'MIT'
}
build = {
	type = 'builtin',
	modules = {
		['lrocket.build.wasm'] = 'lrocket/build/wasm.lua',
		['lrocket.build.wasm-html'] = 'lrocket/build/wasm-html.lua',
		['lrocket.build.wasm-js'] = 'lrocket/build/wasm-js.lua'
	}
}
dependencies = {
	'base64mix = 1.0.0',
	'lrc',
	'lua-wasm32'
}
