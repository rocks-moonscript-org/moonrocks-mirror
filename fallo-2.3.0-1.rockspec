rockspec_format = "3.0"
package = "fallo"
version = "2.3.0-1"

description = {
	summary = "Modern and ergonomic error handling for Lua, inspired by Rust's Result.",
	license = "LGPL-2.0-only",
	maintainer = "NTBBloodbath",
	labels = {
		"error-handling",
		"library",
		"lua",
	},
}

dependencies = {
	"lua>=5.1",
	"lua-cjson>=2.1.0",
}

source = {
	url = "git+https://github.com/NTBBloodbath/fallo",
	tag = "46d407260889d425e7698414735987540f358589",
}

build = {
	type = "builtin",
	modules = {
		fallo = "lua/fallo/init.lua",
	},
}
