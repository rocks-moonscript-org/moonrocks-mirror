package = 'lua-wasm32'
version = '5.5.0-3'
source = {
	url = 'git+https://codeberg.org/leso-kn/lua-wasm32.git',
	tag = 'v5.5.0-3'
}
description = {
	summary = 'liblua.a for WebAssembly',
	homepage = 'https://codeberg.org/leso-kn/lua-wasm32',
	license = 'MIT'
}
build = {
	type = 'make',
	variables = {
		CC = 'clang --target=wasm32-wasip1',
		PREFIX = '$(PREFIX)',
		LUA = '$(LUA)',
		LUADIR = '$(LUADIR)'
	}
}
