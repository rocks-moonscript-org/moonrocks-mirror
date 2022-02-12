package = "cni"
version = "0.1-0"
source = {
	url = "https://fossil.one/toast/cni-lua/zip/v0.1.0/cni-lua.zip",
	dir = "cni-lua",
}
description = {
	homepage = "https://fossil.one/toast/cni-lua",
	license = "UNLICENSE",
	summary = "Pure Lua CNI Parser",
	detailed = [[
		A pure Lua parser for the CNI configuration format using patok and piecemeal.
	]],
}
dependencies = {
	"lua >= 5.1",
	"patok >= 1.2",
}
build = {
	type = "builtin",
	modules = {
		['cni']        = 'cni/init.lua',
		['cni.data']   = 'cni/data.lua',
		['cni.lexer']  = 'cni/lexer.lua',
		['cni.parser'] = 'cni/parser.lua',
	}
}
