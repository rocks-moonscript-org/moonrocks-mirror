rockspec_format = "3.0"
package = "rsjson-lua"
version = "0.2.1-2"

description = {
	summary = "a json library for lua using serde-json",
	license = "MIT",
	homepage = "https://github.com/benniekiss/rsjson-lua",
	issues_url = "https://github.com/benniekiss/rsjson-lua/issues",
	maintainer = "benniekiss",
	labels = {
		"json",
		"rust",
		"bindings",
	},
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-rust-mlua>=0.2.6",
}

source = {
	url = "https://github.com/benniekiss/rsjson-lua/archive/refs/tags/v0.2.1.zip",
}

build = {
	type = "rust-mlua",
	modules = {
		rsjson_lua = "rsjson_lua",
	},
	default_features = false,
	features = {
		"module",
	},
	include = {
		["lua/rsjson.lua"] = "rsjson.lua",
	},
}
