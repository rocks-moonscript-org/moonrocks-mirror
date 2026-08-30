package = 'lua-hob64'
version = '1.0.0-1'
source = {
	url = 'git+https://codeberg.org/leso-kn/lua-hob64',
	tag = 'v1.0.0'
}
description = {
	summary = 'Header-only Base64 library for Lua written in portable ANSI C',
	homepage = 'https://codeberg.org/leso-kn/lua-hob64',
	license = 'MIT'
}
build = {
	type = 'builtin',
	modules = {
		hob64 = {
			sources = 'lhob64.c'
		}
	}
}
