package = "nomad-lua"
version = "0.0.2-1"
source = {
	url = "git+https://gitlab.com/Kamcuk/nomad-lua",
}
description = {
	license = "GPL-3.0-or-later",
}
dependencies = {
	"lua >= 5.1",
	"argparse",
	"inspect",
	"lua-cjson",
}
build = {
	type = "builtin",
	modules = {
		["nomadlua"] = "lua/nomadlua.lua",
	},
	install = {
		bin = {
			["nomad-lua"] = "lua/nomad-lua.lua",
		},
	},
}
